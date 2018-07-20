%{
    configs: [
        %{
            color: true,
            name: "default",
            files: %{
                included: [
                    "apps/*/lib/*", 
                    "apps/*/src/*", 
                    "apps/*/web/*",
                    "apps/*/test/*"
                ],
			    excluded: [~r"/_build/", ~r"/deps/"]
            }, 
            checks: [
                {Credo.Check.Consistency.ExceptionNames},
                {Credo.Check.Consistency.LineEndings},
                {Credo.Check.Consistency.ParameterPatternMatching},
                {Credo.Check.Consistency.SpaceAroundOperators},
                {Credo.Check.Consistency.SpaceInParentheses},
                {Credo.Check.Consistency.TabsOrSpaces},
                
                {Credo.Check.Design.AliasUsage, if_nested_deeper_than: 2},
                {Credo.Check.Design.DuplicatedCode, excluded_macros: [], nodes_threshold: 3},
                {Credo.Check.Design.TagTODO, exit_status: 0},
                {Credo.Check.Design.TagFIXME},

                {Credo.Check.Readability.FunctionNames},
                {Credo.Check.Readability.LargeNumbers},
                {Credo.Check.Readability.MaxLineLength, priority: :low, max_length: 120},
                {Credo.Check.Readability.ModuleAttributeNames},
                {Credo.Check.Readability.ModuleDoc, false},
                {Credo.Check.Readability.ModuleNames},
                {Credo.Check.Readability.ParenthesesOnZeroArityDefs},
                {Credo.Check.Readability.ParenthesesInCondition},
                {Credo.Check.Readability.PredicateFunctionNames},
                {Credo.Check.Readability.PreferImplicitTry},
                {Credo.Check.Readability.RedundantBlankLines},
                {Credo.Check.Readability.StringSigils},
                {Credo.Check.Readability.TrailingBlankLine},
                {Credo.Check.Readability.TrailingWhiteSpace},
                {Credo.Check.Readability.VariableNames},
                {Credo.Check.Readability.Semicolons},
                {Credo.Check.Readability.SpaceAfterCommas},
                {Credo.Check.Readability.Specs, exit_status: 4},

                {Credo.Check.Refactor.DoubleBooleanNegation},
                {Credo.Check.Refactor.CondStatements},
                {Credo.Check.Refactor.CyclomaticComplexity},
                {Credo.Check.Refactor.FunctionArity, [ignore_defp: true]},
                {Credo.Check.Refactor.LongQuoteBlocks},
                {Credo.Check.Refactor.MatchInCondition},
                {Credo.Check.Refactor.NegatedConditionsInUnless},
                {Credo.Check.Refactor.NegatedConditionsWithElse},
                {Credo.Check.Refactor.Nesting},
                {Credo.Check.Refactor.PipeChainStart},
                {Credo.Check.Refactor.UnlessWithElse},

                {Credo.Check.Warning.BoolOperationOnSameValues},
                {Credo.Check.Warning.IExPry},
                {Credo.Check.Warning.IoInspect},
                {Credo.Check.Warning.LazyLogging},
                {Credo.Check.Warning.OperationOnSameValues},
                {Credo.Check.Warning.OperationWithConstantResult},
                {Credo.Check.Warning.UnusedEnumOperation},
                {Credo.Check.Warning.UnusedFileOperation},
                {Credo.Check.Warning.UnusedKeywordOperation},
                {Credo.Check.Warning.UnusedListOperation},
                {Credo.Check.Warning.UnusedPathOperation},
                {Credo.Check.Warning.UnusedRegexOperation},
                {Credo.Check.Warning.UnusedStringOperation},
                {Credo.Check.Warning.UnusedTupleOperation},
                {Credo.Check.Warning.RaiseInsideRescue},
            ]
        }
    ]
}