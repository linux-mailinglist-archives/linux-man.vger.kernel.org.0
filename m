Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E0B76EA083
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 02:13:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232105AbjDUANm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 20:13:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230521AbjDUANm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 20:13:42 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id CD3B935B0
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 17:13:39 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id F1EF963F0;
        Fri, 21 Apr 2023 02:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682036018;
        bh=wAr0BL5HSumKgAmRegQAiLCn+3L3g7OiVIu8T9pxuAE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=HLnUeyugACSoO/vkvHIc+G7RsmSg3S+s4mJVvwFzVQckkQrYK91Ft7Z9fgLiUUUtL
         zdsOrx2HUiluKkJIKzgjVqsjXtA1cjCBmChKylOS4HMR4rK2SDfboBoMPPxe0CkZmu
         mYcTj2rYNyxMp7UUqMeU/sGQniJOfFluPvL3FpurvcXDOhXvdHe1VETYiaHL2FXsks
         vnZq+C9wY0Ck58TnrfvjAL2STi5b8fAvxDMs2YG850YWiOfZZuLkjRjjnMTq4Ncq3x
         0xxksEoyqJIdmMwFdgRlsYxQ81TwEnelgAgPoEwBvEEr6UmYAnTVr4nSPRtGHb+GAZ
         tUq7fsUins1SQ==
Date:   Fri, 21 Apr 2023 02:13:36 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v5 4/8] regex.3: Improve REG_STARTEND
Message-ID: <xmiqli666sj55u7v2qmwr46zxrc3wc75w6jkrp5kbl4i6ejpnr@rtmegyafr3o4>
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <fd1a104d6abc70a2450b17a6b424ca8e20897634.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <1735c494-c165-87d9-8660-865bbfce709a@gmail.com>
 <uubrf6suz7z2kw4el7i5wbzzdxywcqjwhcyqxkdddlwabve5p2@uupjducqbdgk>
 <04a4674f-aff2-1437-6fd6-c7223b1036d8@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="2bshevxrovpbomoe"
Content-Disposition: inline
In-Reply-To: <04a4674f-aff2-1437-6fd6-c7223b1036d8@gmail.com>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2bshevxrovpbomoe
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 21, 2023 at 01:01:11AM +0200, Alejandro Colomar wrote:
> On 4/20/23 21:30, =D0=BD=D0=B0=D0=B1 wrote:
> > On Thu, Apr 20, 2023 at 07:29:27PM +0200, Alejandro Colomar wrote:
> >> On 4/20/23 17:35, =D0=BD=D0=B0=D0=B1 wrote:
> >>> --- a/man3/regex.3
> >>> +++ b/man3/regex.3
> >>> @@ -131,23 +131,30 @@ .SS Matching
> >>>  above).
> >>>  .TP
> >>>  .B REG_STARTEND
> >>> -Use
> >>> -.I pmatch[0]
> >>> -on the input string, starting at byte
> >>> -.I pmatch[0].rm_so
> >>> -and ending before byte
> >>> -.IR pmatch[0].rm_eo .
> >>> +Match
> >>> +.RI [ string " + " pmatch[0].rm_so ", " string " + " pmatch[0].rm_eo=
 )
> >>> +instead of
> >>> +.RI [ string ", " string " + \fBstrlen\fP(" string )).
> >>>  This allows matching embedded NUL bytes
> >>>  and avoids a
> >>>  .BR strlen (3)
> >>> -on large strings.
> >>> -It does not use
> >>> +on known-length strings.
> >>> +.I pmatch
> >>> +must point to a valid readable object.
> >> I think this is redundant, since we showed that [0] is accessed by
> >> the function.
> > Yeah.
> >=20
> >>> +If any matches are returned
> >>> +.RB ( REG_NOSUB
> >>> +wasn't passed to
> >>> +.BR regcomp (),
> >>> +the match succeeded, and
> >>>  .I nmatch
> >>> -on input, and does not change
> >>> -.B REG_NOTBOL
> >>> -or
> >>> -.B REG_NEWLINE
> >>> -processing.
> >>> +> 0), they overwrite
> >> And of course, nmatch must be at least 1, since otherwise, [0] was
> >> not valid, and the whole call would have been UB; right?  So that
> >> third condition must be true to not invoke UB, so we can omit it too,
> >> I think.
> > What? idk where you got this from.
> > Per 0d120a3c76b4446b194a54387ce0e7a84b208bfd:
> >     In the regexec() signature
> >       regmatch_t pmatch[restrict .nmatch],
> >     is a simplification. It's actually
> >       regmatch_t pmatch[restrict
> >         ((.preg->flags & REG_NOSUB) ? 0 : .nmatch) ?:
> >          !!(.eflags & REG_STARTEND)],
> That is a model that was useful in a commit message to describe more
> or less what happens.  It doesn't need to perfectly describe reality.
> Since REG_STARTEND is not in POSIX, we can't read what POSIX says,
> so it's all up to how much implementations want to guarantee.  I
> don't think glibc would like to allow specifying .nmatch as 0 while
> the function accesses [0].  The fact that the current implementation
> doesn't open Hell's doors to nasal demons doesn't mean it can't do
> so in the future.  I conceive that _FORTIFY_SOURCE could reasonably
> check that pmatch[] has at least .nmemb elements, and I don't want
> to preclude that in the documentation.
What? I don't get this. Who cares what POSIX says about this 4.4BSD
extension?

This interface has been unchanged for over 30 years;
4.4BSD-Lite, /usr/src/lib/libc/regex/regexec.c:
    *      @(#)regexec.c   8.1 (Berkeley) 6/4/93

    int                             /* 0 success, REG_NOMATCH failure */
    regexec(preg, string, nmatch, pmatch, eflags)
    const regex_t *preg;
    const char *string;
    size_t nmatch;
    regmatch_t pmatch[];
    int eflags;
    {
            register struct re_guts *g =3D preg->re_g;
    #ifdef REDEBUG
    #       define  GOODFLAGS(f)    (f)
    #else
    #       define  GOODFLAGS(f)    ((f)&(REG_NOTBOL|REG_NOTEOL|REG_STARTEN=
D))
    #endif
   =20
            if (preg->re_magic !=3D MAGIC1 || g->magic !=3D MAGIC2)
                    return(REG_BADPAT);
            assert(!(g->iflags&BAD));
            if (g->iflags&BAD)              /* backstop for no-debug case */
                    return(REG_BADPAT);
            if (eflags !=3D GOODFLAGS(eflags))
                    return(REG_INVARG);
   =20
            if (g->nstates <=3D CHAR_BIT*sizeof(states1) && !(eflags&REG_LA=
RGE))
                    return(smatcher(g, (char *)string, nmatch, pmatch, efla=
gs));
            else
                    return(lmatcher(g, (char *)string, nmatch, pmatch, efla=
gs));
    }

4.4BSD-Lite, /usr/src/lib/libc/regex/engine.c:
    *      @(#)engine.c    8.1 (Berkeley) 6/4/93

    /*
     * The matching engine and friends.  This file is #included by regexec.c
     * after suitable #defines of a variety of macros used herein, so that
     * different state representations can be used without duplicating mass=
es
     * of code.
     */

    #ifdef SNAMES
    #define matcher smatcher
   =20
    #ifdef LNAMES
    #define matcher lmatcher
   =20
    /*
     - matcher - the actual matching engine
     =3D=3D static int matcher(register struct re_guts *g, char *string, \
     =3D=3D     size_t nmatch, regmatch_t pmatch[], int eflags);
     */
    static int                      /* 0 success, REG_NOMATCH failure */
    matcher(g, string, nmatch, pmatch, eflags)
    register struct re_guts *g;
    char *string;
    size_t nmatch;
    regmatch_t pmatch[];
    int eflags;
    {
            register char *endp;
            register int i;
            struct match mv;
            register struct match *m =3D &mv;
            register char *dp;
            const register sopno gf =3D g->firststate+1;      /* +1 for OEN=
D */
            const register sopno gl =3D g->laststate;
            char *start;
            char *stop;
   =20
            /* simplify the situation where possible */
            if (g->cflags&REG_NOSUB)
                    nmatch =3D 0;
            if (eflags&REG_STARTEND) {
                    start =3D string + pmatch[0].rm_so;
                    stop =3D string + pmatch[0].rm_eo;
            } else {
                    start =3D string;
                    stop =3D start + strlen(start);
            }
            if (stop < start)
                    return(REG_INVARG);
(rest of matcher)
            /* fill in the details if requested */
            if (nmatch > 0) {
                    pmatch[0].rm_so =3D m->coldp - m->offp;
                    pmatch[0].rm_eo =3D endp - m->offp;
            }
            if (nmatch > 1) {
                    assert(m->pmatch !=3D NULL);
                    for (i =3D 1; i < nmatch; i++)
                            if (i <=3D m->g->nsub)
                                    pmatch[i] =3D m->pmatch[i];
                            else {
                                    pmatch[i].rm_so =3D -1;
                                    pmatch[i].rm_eo =3D -1;
                            }
            }

That's what the interface /is/ (also, I was guessing last time from
 behaviour and wrote the exact same pseudocode; fun).

And, tell you what, musl also does if(REG_NOSUB) nmatch =3D 0;
so does the illumos gate; glibc does
    int
    regexec (const regex_t *__restrict preg, const char *__restrict string,
             size_t nmatch, regmatch_t pmatch[_REGEX_NELTS (nmatch)], int e=
flags)
    {
      reg_errcode_t err;
      Idx start, length;
      re_dfa_t *dfa =3D preg->buffer;
   =20
      if (eflags & ~(REG_NOTBOL | REG_NOTEOL | REG_STARTEND))
        return REG_BADPAT;
   =20
      if (eflags & REG_STARTEND)
        {
          start =3D pmatch[0].rm_so;
          length =3D pmatch[0].rm_eo;
        }
      else
        {
          start =3D 0;
          length =3D strlen (string);
        }
   =20
      lock_lock (dfa->lock);
      if (preg->no_sub)
        err =3D re_search_internal (preg, string, length, start, length,
                                  length, 0, NULL, eflags);
      else
        err =3D re_search_internal (preg, string, length, start, length,
                                  length, nmatch, pmatch, eflags);
      lock_unlock (dfa->lock);
      return err !=3D REG_NOERROR;
    }
i.e. it sets nmatch to 0 if REG_NOSUB, but later.
None of them do
  if (eflags & REG_STARTEND && !nmatch)
    ... what now? return an error?
for the sole purpose of... providing an interface that's broken?

nmatch is the amount of matches you care about getting back,
and nothing more.


If anything, the POSIX header is (Issue 8 Draft 2.1):
11030  The following shall be declared as functions and may also be defined=
 as macros. Function
11031  prototypes shall be provided.
11032  int    regcomp(regex_t *restrict, const char *restrict, int);
11033  size_t regerror(int, const regex_t *restrict, char *restrict, size_t=
);
11034  int    regexec(const regex_t *restrict, const char *restrict, size_t,
11035            regmatch_t [restrict], int);
11036  void   regfree(regex_t *);


So you've overconstrained the interface for simplicity,
and now you're treating the simplification as a ground truth of..?

And glibc, if anything, would love for you to specify the start and end
bounds with REG_STARTEND while also passing nmatch =3D 0,
because it additionally optimises for that case (&& no backrefs).


/And also/, 6.7.6.2 Array declarators says:
  Constraints
  1 In addition to optional type qualifiers and the keyword static, the
  [ and ] may delimit an expression or *. If they delimit an expression
  (which specifies the size of an array), the expression shallhave an
  integer type. If the expression is a constant expression, it shall
  have a value greater thanzero. The element type shall not be an
  incomplete or function type. The optional type qualifiers and the
  keyword static shall appear only in a declaration of a function
  parameter with an array type, and then only in the outer most array
  type derivation.

  2 If an identifier is declared as having a variably modified type, it
  shall be an ordinary identifier (as defined in 6.2.3), have no
  linkage, and have either block scope or function prototype scope. If
  an identifier is declared to be an object with static or thread
  storage duration, it shall not have a variable length array type.

  Semantics
  3 If, in the declaration "T D1", D1 has one of the forms:
     D [        type-qualifier-list(opt)        assignment-expression(opt) =
] attribute-specifier-sequence(opt)
     D [ static type-qualifier-list(opt)        assignment-expression      =
] attribute-specifier-sequence(opt)
     D [        type-qualifier-list      static assignment-expression      =
] attribute-specifier-sequence(opt)
     D [        type-qualifier-list(opt) *                                 =
] attribute-specifier-sequence(opt)
  and the type specified for /ident/ in the declaration "T D" is
  "derived-declarator-type-list T", then the type specified for /ident/
  is "derived-declarator-type-list array of T".172)173) The optional
  attribute specifiersequence appertains to the array. (See 6.7.6.3 for
  the meaning of the optional type qualifiers and the keyword static.)

Where 6.7.6.3 Function declarators says:
  6 A declaration of a parameter as "array of /type/" shall be adjusted
  to "qualified pointer to /type/", wherethe /type/ qualifiers (if any)
  are those specified within the [ and ] of the array type derivation.
  If the keyword static also appears within the [ and ] of the array
  type derivation, then for each call to the function, the value of the
  corresponding actual argument shall provide access to the first
  element of an array with at least as many elements as specified by the
  size expression.

So even /if/ the declaration was
  int
  regexec(const regex_t *restrict, const char *restrict, size_t nmatch,
          regmatch_t pmatch[restrict static nmatch], int);
/which it isn't/, not even in glibc (#define _REGEX_NELTS(n) n, or to
empty depending on the environment, which means it's a regular
variably-modified array type, which means nothing when used in a
function prototype), it would /still/ be legal to do any of the below:
  regexec(regp, "", 0, NULL, 0);
  regmatch_t rm;
  regexec(regp, "", 0, &rm, 0);
  regexec(regp, "", 1, &rm, 0);
  regmatch_t rms[999];
  for(int i =3D 0; i < 999; ++i)
    regexec(regp, "", i, rms, 0);

More to the point, perhaps, 6.7.6.3 continues:
  20 EXAMPLE 5
  The following are all compatible function prototype declarators.
    double maximum(int n, int m, double a[n][m]);
    double maximum(int n, int m, double a[*][*]);
    double maximum(int n, int m, double a[ ][*]);
    double maximum(int n, int m, double a[ ][m]);
  as are:
    void f(double (*restrict a)[5]);
    void f(double a[restrict][5]);
    void f(double a[restrict 3][5]);
    void f(double a[restrict static 3][5]);
  (Note that the last declaration also specifies that the argument
  corresponding toain any call tofcan be expected to be a non-null
  pointer to the first of at least three arrays of 5 doubles,
  which the others do not.)

Which the others do not.

Well, it's not to the point since there's no static and there'll never
be static, but maybe it drives home that unless whatever's inside [] is
"restrict" or "static {expr}", it's purely decorative. And even with
static, you can always give it more objects. This is like saying that
       char *strncpy(char dst[restrict .sz], const char *restrict src,
                      size_t sz);
makes
    char dst[256 + 1]
	strncpy(dst, "whatever", 256);
illegal.


(There's also a forward-reffed stanza at 6.9.1.10, but I'm pretty sure
 it only applies to multi-dimensional VLAs.)


Best,
=D0=BD=D0=B0=D0=B1

--2bshevxrovpbomoe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRB1S4ACgkQvP0LAY0m
WPERJBAAucHHl8N5hrYrxyUuNu1nZs8ElynActi6PVG10Y4thqrV1I84KQFGRy7A
WFajip3p+T7a8jMiEjIumNKa5oZW2AkD+jsQB1J6+wIMtpjerc9qX7Xcak8JgYpv
Bmc/3JR+lBXW+/iqUQ/KSZWb1P0pp7HNMkvJYnujdw7ZUEw+8tKzUytByyA7jZLj
awb6RIiIA7PBNAaOo1484b8cKrBg9qpDxMyVpDXiMR60e+RtE+YetCgPehGDHvix
YU9HCXTpFXf688aozadNhvNqZ5K9qf6Zpvl/MzjUk1hqd7pfEop5nDvLVLJG+vmS
lX3Gct12h+69H8FP2byXuUyP4B3Qvumu8NtYxn2/8RFY21c+VaNYcGERCryjKKh6
jcOxGRB3WN0uRR5eJOh40dmPbMyy//BnDTBEenjLenQxQbzUJN/4EQwxwhzwhmfG
4MiWPE+CliROLaygnQ8qauOWun05ylyoUNTeMRLgMQo/fM6IimGGE7r/t74tt6vx
O6dLWt6F9KUtNNcT+L7X+9oE1yydSIu+cJaX4qkfa9l+VV0GbUD1Vfc4YffkyPQg
YEZW8sAEaOfNvWeQLnd2DCQ53odMCvf+rCk95QvtNmydESh5qToagoJY74tAgAo3
79jbDOvHH4dtNd3PRdOLXi2IWKgwuLtoHQCg9wy/rmpKNYQ7TP4=
=PS5W
-----END PGP SIGNATURE-----

--2bshevxrovpbomoe--
