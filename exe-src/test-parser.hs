module Main where

import Control.Applicative
import Control.Lens
import Control.Monad
import Data.Monoid
import qualified Data.Text.IO as T
import qualified Data.Set as S
import System.Environment
import System.IO
import Text.Trifecta
import Text.Printf
import Text.PrettyPrint.ANSI.Leijen as Pretty hiding (line, (<>), (<$>), empty, integer)

import Language.Formura.AST
import Language.Formura.SyntaxParser (program)
import Language.Formura.Parser
import Language.Formura.Printer



main :: IO ()
main = do
  (fileName:_ ) <- getArgs
  res <- parseFromFileEx (program <* eof) fileName
  case res of
    Success ast -> do
      print ast
    Failure xs -> displayIO stdout $ renderPretty 0.8 80 $ xs <> linebreak