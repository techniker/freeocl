// Generated by Bisonc++ V2.4.8 on Mon, 02 May 2011 16:42:11 +0200

#ifndef ParserBase_h_included
#define ParserBase_h_included

#include <vector>
#include <iostream>

// $insert preincludes
#include "macros.h"

namespace // anonymous
{
    struct PI__;
}

// $insert namespace-open
namespace FreeOCL
{

class ParserBase
{
    public:
// $insert tokens

    // Symbolic tokens:
    enum Tokens__
    {
        IDENTIFIER = 257,
        CONSTANT,
        STRING_LITERAL,
        SIZEOF,
        PTR_OP,
        INC_OP,
        DEC_OP,
        LEFT_OP,
        RIGHT_OP,
        LE_OP,
        GE_OP,
        EQ_OP,
        NE_OP,
        AND_OP,
        OR_OP,
        MUL_ASSIGN,
        DIV_ASSIGN,
        MOD_ASSIGN,
        ADD_ASSIGN,
        SUB_ASSIGN,
        LEFT_ASSIGN,
        RIGHT_ASSIGN,
        AND_ASSIGN,
        XOR_ASSIGN,
        OR_ASSIGN,
        TYPE_NAME,
        TYPEDEF,
        CHAR,
        SHORT,
        INT,
        LONG,
        UCHAR,
        USHORT,
        UINT,
        ULONG,
        FLOAT,
        DOUBLE,
        CHAR2,
        SHORT2,
        INT2,
        LONG2,
        UCHAR2,
        USHORT2,
        UINT2,
        ULONG2,
        FLOAT2,
        DOUBLE2,
        CHAR3,
        SHORT3,
        INT3,
        LONG3,
        UCHAR3,
        USHORT3,
        UINT3,
        ULONG3,
        FLOAT3,
        DOUBLE3,
        CHAR4,
        SHORT4,
        INT4,
        LONG4,
        UCHAR4,
        USHORT4,
        UINT4,
        ULONG4,
        FLOAT4,
        DOUBLE4,
        CHAR8,
        SHORT8,
        INT8,
        LONG8,
        UCHAR8,
        USHORT8,
        UINT8,
        ULONG8,
        FLOAT8,
        DOUBLE8,
        CHAR16,
        SHORT16,
        INT16,
        LONG16,
        UCHAR16,
        USHORT16,
        UINT16,
        ULONG16,
        FLOAT16,
        DOUBLE16,
        SIGNED,
        UNSIGNED,
        SIZE_T,
        CONST,
        VOLATILE,
        VOID,
        STRUCT,
        UNION,
        ENUM,
        CASE,
        DEFAULT,
        IF,
        SWITCH,
        WHILE,
        DO,
        FOR,
        GOTO,
        CONTINUE,
        BREAK,
        RETURN,
        __KERNEL,
        __GLOBAL,
        __LOCAL,
        __PRIVATE,
        __CONSTANT,
        ELSE,
    };

// $insert STYPE
typedef  Node STYPE__;


    private:
        int d_stackIdx__;
        std::vector<size_t>   d_stateStack__;
        std::vector<STYPE__>  d_valueStack__;

    protected:
        enum Return__
        {
            PARSE_ACCEPT__ = 0,   // values used as parse()'s return values
            PARSE_ABORT__  = 1
        };
        enum ErrorRecovery__
        {
            DEFAULT_RECOVERY_MODE__,
            UNEXPECTED_TOKEN__,
        };
        bool        d_debug__;
        size_t      d_nErrors__;
        size_t      d_requiredTokens__;
        size_t      d_acceptedTokens__;
        int         d_token__;
        int         d_nextToken__;
        size_t      d_state__;
        STYPE__    *d_vsp__;
        STYPE__     d_val__;
        STYPE__     d_nextVal__;

        ParserBase();

        void ABORT() const;
        void ACCEPT() const;
        void ERROR() const;
        void clearin();
        bool debug() const;
        void pop__(size_t count = 1);
        void push__(size_t nextState);
        void popToken__();
        void pushToken__(int token);
        void reduce__(PI__ const &productionInfo);
        void errorVerbose__();
        size_t top__() const;

    public:
        void setDebug(bool mode);
}; 

inline bool ParserBase::debug() const
{
    return d_debug__;
}

inline void ParserBase::setDebug(bool mode)
{
    d_debug__ = mode;
}

inline void ParserBase::ABORT() const
{
    throw PARSE_ABORT__;
}

inline void ParserBase::ACCEPT() const
{
    throw PARSE_ACCEPT__;
}

inline void ParserBase::ERROR() const
{
    throw UNEXPECTED_TOKEN__;
}


// As a convenience, when including ParserBase.h its symbols are available as
// symbols in the class Parser, too.
#define Parser ParserBase

// $insert namespace-close
}

#endif


