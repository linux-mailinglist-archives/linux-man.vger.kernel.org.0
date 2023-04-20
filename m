Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 527ED6E9802
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 17:06:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233807AbjDTPGA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 11:06:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233960AbjDTPF7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 11:05:59 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 8C2414EC4
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 08:05:57 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id A2DFB67B4;
        Thu, 20 Apr 2023 17:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682003154;
        bh=IHrd8SWzmSOBLJDRaIoJptDHitrhZVOmqvVbKmsHOYY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=bkNRgOMGFHfWm8iXHw76HzDHyTn26sH0Js9lZthkjK4w26rLmevxm1yQkgWtuEJht
         edrFsJw+F1Qj7vBaZ4REzQmDilLU00K83dMWycljUUtzQTk/spHorLDcyfzLhn3j1j
         SrCSTcPvQkKxIr5VXoqfkHT8pEgYmJhGhl45I1b0jtUgtIvU417lRxy1yx8wQgEIjq
         HlmfTLYBa1H785bo+Slnuz3nPJITJRl4E5EKO/2LLPP8sT26ursyCKKFdJ0qWjCfsU
         EPTwGTefpVkL8kXZlGvTitAhysQML1vg20LMN31bQmmvw/ERJv876Zm2++fzvK3TGN
         63FmDvNTG1/TQ==
Date:   Thu, 20 Apr 2023 17:05:53 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v4 6/6] regex.3: Destandardeseify Match offsets
Message-ID: <tffsidfrewe4yxhfr534jsznrbv526x2ilrk7k7vfpwabpmxne@5bilrttama4e>
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
 <9b1790334c6f1367f7ea63c8e2ce04d2ae0f9eb7.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <09c3c0bf-79e4-1cdf-8aa7-b82155aa3f47@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="mhqfxnzmi5o5hima"
Content-Disposition: inline
In-Reply-To: <09c3c0bf-79e4-1cdf-8aa7-b82155aa3f47@gmail.com>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--mhqfxnzmi5o5hima
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Thu, Apr 20, 2023 at 04:10:04PM +0200, Alejandro Colomar wrote:
> On 4/20/23 15:02, =D0=BD=D0=B0=D0=B1 wrote:
> > --- a/man3/regex.3
> > +++ b/man3/regex.3
> > @@ -188,37 +188,34 @@ This flag is a BSD extension, not present in POSI=
X.
> >  .SS Match offsets
> >  Unless
> >  .B REG_NOSUB
> > -was set for the compilation of the pattern buffer, it is possible to
> > -obtain match addressing information.
> > -.I pmatch
> > -must be dimensioned to have at least
> > -.I nmatch
> > -elements.
> > -These are filled in by
> > +was passed to
> > +.BR regcomp (),
> > +it is possible to
> > +obtain the locations of matches within
> > +.IR string :
> >  .BR regexec ()
> > -with substring match addresses.
> > -The offsets of the subexpression starting at the
> > -.IR i th
> > -open parenthesis are stored in
> > -.IR pmatch[i] .
> > -The entire regular expression's match addresses are stored in
> > -.IR pmatch[0] .
> > -(Note that to return the offsets of
> > -.I N
> > -subexpression matches,
> > +fills
> >  .I nmatch
> > -must be at least
> > -.IR N+1 .)
> > -Any unused structure elements will contain the value \-1.
> > +elements of
> > +.I pmatch
> > +with results:
> > +.I pmatch[0]
> > +corresponds to the entire match,
> I still don't understand this.  Does REG_NOSUB also affect pmatch[0]?
> I would have expected that it would only affect *sub*matches, that is, [>=
0].

Let's consult the manual:
  REG_NOSUB  Do not report position of matches. [...]
  REG_NOSUB  Compile for matching that need only report success or
             failure, not what was matched.                    (4.4BSD)
and POSIX:
  REG_NOSUB  Report only success or fail in regexec().
  REG_NOSUB  Report only success/fail in regexec( ).
(yes; the two times it describes it, it's written differently).

POSIX says it better I think.

And, indeed:
	$ cat a.c
	#include <regex.h>
	#include <stdio.h>
	int main(int c, char ** v) {
		regex_t r;
		regcomp(&r, v[1], 0);
		regmatch_t dt =3D {0, 3};
		printf("%d\n", regexec(&r, v[2], 1, &dt, REG_STARTEND));
		printf("%d, %d\n", (int)dt.rm_so, (int)dt.rm_eo);
	}

	$ cc a.c -oac
	$ ./ac 'c$' 'abcdef'
	0
	2, 3

	$ sed 's/0)/REG_NOSUB)/' a.c | cc -xc - -oac
	$ ./ac 'c$' 'abcdef'
	0
	0, 3


=2E..and I've just realised why you're asking =E2=80=92 I think you're read=
ing too
much (and ahistorically) into the "SUB" bit;
heretofor I've assumed this is for "substitution", which I think is fair.

Actually, let's consult POSIX.2 (Draft 11.2):
  591     Table B-8  =E2=88=92 regcomp() cflags Argument
  596  REG_NOSUB  Report only success/fail in regexec().
B.5 C Binding for Regular Expression Matching, B.5.2 Description:
  609  If the REG_NOSUB flag was not set in cflags, then regcomp() shall se=
t re_nsub to
  610  the number of parenthesized subexpressions [delimited by \( \) in ba=
sic regular
  611  expressions or ( ) in extended regular expressions] found in pattern.
both as present-day.

B.5.5 Rationale., History of Decisions Made:
  791  The working group has rejected, at least for now, the inclusion of a=
 regsub() func-
  792  tion that would be used to do substitutions for a matched regular ex=
pression.
  793  While such a routine would be useful to some applications, its utili=
ty would be
  794  much more limited than the matching function described here. Both re=
gular
  795  expression parsing and substitution are possible to implement withou=
t support
  796  other than that required by the C Standard {7}, but matching is much=
 more com-
  797  plex than substituting. The only =E2=80=98=E2=80=98difficult=E2=80=
=99=E2=80=99 part of substitution, given the infor-
  798  mation supplied by regexec(), is finding the next character in a str=
ing when there
  799  can be multibyte characters. That is a much wider issue, and one tha=
t needs a
  800  more general solution.

  803  In Draft 9, the interface was modified so that the matched substring=
s rm_sp and
  804  rm_ep are in a separate regmatch_t structure instead of in regex_t. =
This allows a
  805  single compiled regular expression to be used simultaneously in seve=
ral contexts;
  806  in main() and a signal handler, perhaps, or in multiple threads of l=
ightweight
  807  processes. (The preg argument to regexec() is declared with type con=
st, so the
  808  implementation is not permitted to use the structure to store interm=
ediate
  809  results.) It also allows an application to request an arbitrary numb=
er of sub-
  810  strings from a regular expression. (Previous versions reported only =
ten sub-
  811  strings.) The number of subexpressions in the regular expression is =
reported in
  812  re_nsub in preg. With this change to regexec(), consideration was gi=
ven to drop-
  813  ping the REG_NOSUB flag, since the user can now specify this with a =
zero nmatch
  814  argument to regexec(). However, keeping REG_NOSUB allows an implemen=
tation
  815  to use a different (perhaps more efficient) algorithm if it knows in=
 regcomp() that
  816  no subexpressions need be reported. The implementation is only requi=
red to fill
  817  in pmatch if nmatch is not zero and if REG_NOSUB is not specified. N=
ote that the
  818  size_t type, as defined in the C Standard {7}, is unsigned, so the d=
escription of
  819  regexec() does not need to address negative values of nmatch.

So: yes, there was a substitution interface that got cut.
The name is actually a hold-over from
"don't allocate for ten subexpressions in regex_t".

I think changing our description to
  REG_NOSUB  Only report overall success. regexec() will only use pmatch
             for REG_STARTEND, and ignore nmatch.
may make that more obvious.

Best,
=D0=BD=D0=B0=D0=B1

--mhqfxnzmi5o5hima
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBVM4ACgkQvP0LAY0m
WPH3ZQ/9HfNPBxvC6ZTxMdLAHS21J3AIw4VGBF2746r98hOLXhm9LJCnt4uFPGuM
iAY+G6bv6NoH484Oe32o6VaMffGh7gXPbpV0HtcaosF+Hlqh/2HZVLex1E/amrmL
v2uu3MQDXwrtaU7Uub7MkfTYoV3qI+sht/RkpUQy8BWpu0dX1zoqoznxa5X0sERS
sCBxUA5XJ1gqOceJQ2rik7vK57yHVpGlmahVhTjFX8XdkEKxGopFo0OdE+L6KIW/
LPXuO7pzKtYG8rD0gpfEgzdHI6BY1XtgcrbzI5lxBdWMnzMa4qs+aVT/RpAcu+5U
MvWTNgBux0PsdJ4iP8aeL8nv8GtunFxMTNeWlZ/Hev3NvH9eeu2+/bv7wszu6Zb4
RfER9hlf5CRucBnqAWuy+FUBuU/MlBtkboQvxEl1lE5ES3aIGE2B3PQiuW/Y0VsG
SWrWTT1nOxj4lY2mYsPLJZ77a+eqHOP4/51Pm0S9V2IvW38V70g5zMXL3dge2RUm
8EXTt431qzuF065GyA6t7/aOjA7nyTlQfcB2MqTBcb1RBvgJTggBJvPvHhnGMMNJ
bNUvDLZLLEmetCE3sxZAIuJINfMYUlJ7jRVzgnrjevBluX4yunXIf1CXc9HUq6Qt
0Rq8omDLoetE8KHvtdEY0GlIhBT74bt7VtKTKjjwudcntBHRp+k=
=4E1N
-----END PGP SIGNATURE-----

--mhqfxnzmi5o5hima--
