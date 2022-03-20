Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F41BE4E1B22
	for <lists+linux-man@lfdr.de>; Sun, 20 Mar 2022 11:52:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233767AbiCTKyM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Mar 2022 06:54:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231442AbiCTKyL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Mar 2022 06:54:11 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6648E2315F
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 03:52:48 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id s8so13167722pfk.12
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 03:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lWomz+nm2aFiEs0EUrRLMRaTzbYTODFsT9BFmMTmUv8=;
        b=hHcLFnttQUkDkm74QKp8NMePzv9NlqMvmU8wdkq81UcYmPSiJ5gXzM6yGEGJneQ1hJ
         +y0GXnAPB2puHfm+ytu4Lw0ZccnJ/6AGgO2HzZyVyb22QkhKet5M4Os2QxzX8TNGuTJI
         oyUX4eN/mm/SfSMdgO59T19074xCbNXb3GuwotkOnjwXtqhkBsuVjj56+pudOPjNIRMr
         0WDHDQDcbDjW1kVLKAlfOvjrxThnrKp29KluTey9fnRGfZYsL5PMbk1E4PW7MG7eT9tz
         FRYGrQ5AXczoqi+bgqdgeQ6BfXia9oLFsSaUC9XLsIYe12xsiPqfpLfN5hQd8F13m4L5
         eD2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lWomz+nm2aFiEs0EUrRLMRaTzbYTODFsT9BFmMTmUv8=;
        b=CprdyHtqMHeSdEuwTmD8k3s/OBYNStnb8JRLyYMJ5w8Rcua9GuNNPySCdNmK1qRQrp
         YquZVdTZeAowblTktpezcsNkT1EObbIpJoI+JWIhT7QxwPTpv11ZKsdXl6wer9RmH5P7
         8rFkJSWpcyvyU9dmtehSRBR5nqxb0HaTFPPFXZp+e5vevwAI71+rVqn+s+zF7nZP3UWz
         SOIYhNO29j+q6pkUo4tnz0R2z4CsrDm52zHnYTbRMLSMKgdi/fPNdjs8hMIVHpMRB0i8
         GNyrqmQUP7B+1JCssSmippJ6jKlDpJ4zzTiyxMHoBjBcECurVWaBUxW6azGHIWlIJD1R
         bCaQ==
X-Gm-Message-State: AOAM532/+DLrcki8yssJQovcqO+o6pslgxyV8Q1Irs3D3EsyDZKiY0Mh
        cUbaVRahrCOh7jhGOFT5qVjocagUD6E=
X-Google-Smtp-Source: ABdhPJxltLcux/jk+fGlzIyNgHbRI/qk3NdCZbjVNBo/kkZ5/OLpuOwz3Qnx4F4QQJmDxATE8Y0aZQ==
X-Received: by 2002:a63:388:0:b0:37c:8577:c8f3 with SMTP id 130-20020a630388000000b0037c8577c8f3mr14701304pgd.148.1647773567734;
        Sun, 20 Mar 2022 03:52:47 -0700 (PDT)
Received: from localhost.localdomain ([1.145.30.29])
        by smtp.gmail.com with ESMTPSA id e10-20020a17090a630a00b001c685cfd9d1sm9387171pjj.20.2022.03.20.03.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Mar 2022 03:52:47 -0700 (PDT)
Date:   Sun, 20 Mar 2022 21:52:37 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     groff@gnu.org, linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: Review incorrect man-pages commit
Message-ID: <20220320105236.zsjiafuru5hjk2uw@localhost.localdomain>
References: <9e2a2f6d-d086-4570-2d22-f218fdb0e686@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="sn3r6v77emah7twf"
Content-Disposition: inline
In-Reply-To: <9e2a2f6d-d086-4570-2d22-f218fdb0e686@gmail.com>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--sn3r6v77emah7twf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

At 2022-03-20T01:04:17+0100, Alejandro Colomar (man-pages) wrote:
> Michael introduced the following commit, which is incorrect (triggers
> a groff(1) error; see below).  Do you know what is intended here?
> Could you please propose a fix?

Sure!  The punctuation does get a bit bewildering.

The first topic is equivalence classes in globs.

> LINT (groff)	tmp/lint/man7/glob.7.lint.groff.touch
> troff	man7/glob.7	195	 error	 '\`' is not allowed in an escape name
> troff	man7/glob.7	195	 warning	 can't find special character ''

>  For example, "\fI[[=3Da=3D]]\fP" might be equivalent
> -to "\fI[a\('a\(`a\(:a\(^a]\fP", that is,
> +to "\fI[a\('a\(\`a\(:a\(^a]\fP", that is,

UTF-8 continuation bytes follow in this message.

So what we're trying to say is
  "[=3Da=3D]" might be equivalent to "[a=C3=A1=C3=A0=C3=A4=C3=A2]"

The man page is using groff special character escape sequences that are
compatible with AT&T troff (1973) in _form_, but the special character
_identifiers_ themselves are not portable that far back.  The form is:
  \(xx
=2E..where "xx" is _exactly_ two characters forming an identifier for a
specific special character.  As is somewhat well known, groff supports
identifier of arbitrary length in escape sequences; anywhere AT&T troff
has an escape sequence syntax form ending in "(xx", groff supports
an additional form "[xxxxxxx]".

Nota bene that word "identifier".

The ones we see above are aliases for commonly used ISO Latin-1 (1985)
characters.  groff supports a more systematic notation for composite
glyphs, that being
  \[base-glyph composite-1 composite-2 ...  composite-n]
and in the instant case, only one composite glyph is used.

Glyph identifiers in groff must consist of valid identifier characters.
The escape character \ is _not_ interpreted as an identifier character,
but has its usual meaning of introducing an escape sequence.  Thus, when
encountering
  \(\`a
the parser hits the expansion of \` and has problems.  \` is itself an
alias for another special character escape sequence: "\(ga".  (This
alias _is_ portable all the way back to AT&T troff, and is documented in
Ossanna 1976, "Nroff/Troff User's Manual"--but that still doesn't make
it a valid part of a special character identifier.  Heirloom Doctools
troff silently ignores it, and I thus suspect Unix V7 troff did too.)

Thus, the special character you're naming has another special character
as part of its identifier.  That is not allowed.

That is why an error is produced.

Now, for the part people actually care about, which is how to fix it:
take the escape character off of that `.

You thus want

+to "\fI[a\('a\(`a\(:a\(^a]\fP", that is,

If you wanted to write this without using any aliases, you could adopt
groff syntax.

+to "\fI[a\[a aa]\[a ga]\[a ad]\[a a^]\fP", that is,

I don't know if people regard that as more or less impenetrable.  It is
more _flexible_, and admits usage of diacritics/combining characters not
envisioned by AT&T troff or ISO Latin-1.  groff supports a baker's
dozen.  They are in a table titled "Accents" in groff_char(7) (1.22.4).

> diff --git a/man8/zic.8 b/man8/zic.8
> index 940d6e814..aeca0e726 100644
> --- a/man8/zic.8
> +++ b/man8/zic.8
> @@ -293,7 +293,7 @@ nor
>  .q + .
>  To allow for future extensions,
>  an unquoted name should not contain characters from the set
> -.q !$%&'()*,/:;<=3D>?@[\e]^`{|}\(ti .
> +.q !$%&'()*,/:;<=3D>?@[\e]^\`{|}\(ti .

You didn't proffer any complaints about the foregoing, so I assume it
was just for context (to include the whole commit, maybe).  Nevertheless
I think it can be further improved.

That neutral apostrophe and caret/circumflex should be changed as well,
to ensure that they don't render as a directional closing (right) single
quote, =E2=80=99 U+2019 and modifier letter circumflex =CB=86 U+02C6.  This=
 advice is
also in groff 1.22.4's groff_man(7) page.

+.q !$%&\(aq()*,/:;<=3D>?@[\e]\(ha\`{|}\(ti .

Moreover, as partly noted in our discussion about double quotes in macro
arguments, there were no special characters for the double quote or
neutral apostrophe in Unix troff.  Since we're not getting 50 years of
backward compatibility anyway, for the Linux man-pages project I
recommend going ahead and using groff-style escape sequences for these.

+.q !$%&\[aq]()*,/:;<=3D>?@[\[rs]]\[ha]\`{|}\[ti] .

Are you willing to settle for 30 years of backward compatibility?  ;-)

In my opinion it is more helpful in dense contexts like this to have the
paired delimiters [ ] to demarcate the glyph identifier then to achieve
portability to systems that don't support identifiers you need anyway.

(I note that `q` is a page-local macro and therefore bad style for
portability reasons.  That said, I have been _sorely_ tempted to add a
`Q` macro for this precise purpose to groff man(7).  I have hopes that
it would give people something to reach for besides bold and italics for
every damn thing.)

Most--I hope all--of the above is discussed comprehensively in the
current version of groff_char(7)[2], which I have rewritten completely
since groff 1.22.4 and substantially modified even since the last Linux
man-pages snapshot at
<https://man7.org/linux/man-pages/man7/groff_char.7.html>.  I now know
the answers to many questions of the form "why the **** is {groff,troff}
this way?", and have endeavored to share them.  The "History" section is
completely new.

Regards,
Branden

[1] groff's own man pages are not without sin in this regard.  I have
    cleaned them up a lot since 1.22.4, but a few adventurous stragglers
    remain that define and use page-local macros pervasively.  All are
    on the long side.

[2] https://git.savannah.gnu.org/cgit/groff.git/tree/man/groff_char.7.man

    I recommend that for source perusal only; do not try to render it
    with man-db man(1) or groff 1.22.4, because groff 1.23.0 will be
    adding a new macro, `MR`, for man page cross references[3] and its
    own pages have already been ported to use it.  (This is where I
    flagellate myself for not having a groff 1.23.0-rc2 out yet. :( )

[3] https://git.savannah.gnu.org/cgit/groff.git/tree/NEWS#n165

--sn3r6v77emah7twf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmI3B2YACgkQ0Z6cfXEm
bc5vlBAAhNf0qX/ioWGycXSnXk7p0PxYyAz3+HHVIjh4iiAKcX1CIkCrljLU3Zbj
RkkO2dMFj0o9GoS1qsIHyZRvvhLiMh1Wu0UIPc9jGiClLSiVROZQG0DyhW/Y8XPC
fVP+T/5chdoCRB3+WkAWPuJgI/UQf75ISQowOauMxuW/Y0/eYSgnoKZNot+6P3dX
CPRqZOk4TprHmiVbPipUM+6GgK7fNdhETRo4cwsQX6Nu2lF9TC/Us7P3aX0DcWo1
HKSTp+7kciteYZZ7ohglWAtaCHFC2WafsmECrQIemIAevnrooi3LN5CxlWEnD9hq
2oe6MAxtrh4hEeDbxiQ1Oh/4dAh3mz4AlXt11D8d2H5yjVPD7IUOb+DgWvxZtN54
Iobv9AdcFkp4+l+8GQ6xSaT9xLAWhu2IxtXOuxjC0ndcBRKt+gLe1wddD17RybEp
3DA/QxGO131YRmxdWzoP70j9b0ElMUqssWT3G6uFTXkoY1WqS99RhMCxDIE72/0X
eOnNmcsPcbGVG3I4AEU62/cC5pmSRXQilSKqIOmKX+4ySe2X9qmQd6Z27CKGWLYW
T5mg36wYgihY4yzp5zA+zr7wOWVzkQ6nOqVw6dqRAwPPzGW9/FFjfggnzc7qncrb
/LivpQ+DTD521PfMm7FXRkGmIt+eaQ/Pi2l99Vhsdn8ZsRIf03c=
=hMD0
-----END PGP SIGNATURE-----

--sn3r6v77emah7twf--
