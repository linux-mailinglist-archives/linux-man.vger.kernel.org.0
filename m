Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6EE216EF15D
	for <lists+linux-man@lfdr.de>; Wed, 26 Apr 2023 11:44:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240260AbjDZJov (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 26 Apr 2023 05:44:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240154AbjDZJor (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 26 Apr 2023 05:44:47 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D0DA10EB
        for <linux-man@vger.kernel.org>; Wed, 26 Apr 2023 02:44:45 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f20215fa70so26621535e9.0
        for <linux-man@vger.kernel.org>; Wed, 26 Apr 2023 02:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682502284; x=1685094284;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HIF6f4xKn/AEsechbBwXhXRf5tNqWSN+i81LHt9HKcc=;
        b=J8+s/LjoH77+2N9E13S2Z6H3iUYC1agd8ycLOTGIcaPCcdvT8oYKclMcw65KKXrGjZ
         hHRAg+JQS6z73LY8c4eG0VKmrQ0DrARY7xwp7QQZ5DLsvNo2PUtL/9x9SSZkYof2F2Q5
         Mh9029Gfvgctl8v2kmlEUDEwwx3dp675VudzDrdvKlz2Jjz0TM5hbm/eWI7I8vjlz7Va
         87OhQC4Y8eb97zQW8iQR0QOKNuPTAVe+4l1LHWVDHkA+MM0dM9VtiyqTXDpbnQz9+SJ5
         ks3iHmSg89Tey3Ik2gxJR8xiM6gczPXQ7h0pQ1+/8wErFomeWnd0mU1hIjrOAAMMgd8P
         rT3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682502284; x=1685094284;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HIF6f4xKn/AEsechbBwXhXRf5tNqWSN+i81LHt9HKcc=;
        b=kISLs8GTg2eMDWR8xbI8guuqW8RHnCQfRczK1fqr0ENX5eXtnrJMsbFfBaFu+Kpsuq
         ABBajeqDpce0P/NAZ/zXynRm/DuOj4BtnRewufqKk3qrhXIfdLx2pydYbsv+/5H6QAru
         mXj6S26xABb2GIej5MmnTFhXR79ySYac1wXccrE0puqvFMzFh8ovPc/3tUm0o2Dpo0J+
         VmdPMG+hgWeQ5zkmDgE8HRUcy/abi3HTDoldd4ImzX0BVmR5OK4We0o3peasJ5LX1vjS
         h5ZG7tpG2+CqehkAsBluIa3aw/3LkenLGQerB4roaEIHnDQwrlHytuH4XbXjpTTkYHO1
         QW6A==
X-Gm-Message-State: AAQBX9ddi7il1U5LcHXzESJAkWjRs44XEqUynvqEzqUZmurcwUx00Glo
        2JUl/UebkV1cq/uEqwB42dUXugVfslg=
X-Google-Smtp-Source: AKy350YX0Hkip6k0rnhE8VinUhQC9dw/DKfr0o2XclZqIqN4zAO8RMC3SutaXQMOgWDkISRebHC1jw==
X-Received: by 2002:a7b:ca58:0:b0:3f2:5641:3d4 with SMTP id m24-20020a7bca58000000b003f2564103d4mr3840146wml.33.1682502283676;
        Wed, 26 Apr 2023 02:44:43 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id bi26-20020a05600c3d9a00b003eddc6aa5fasm17100922wmb.39.2023.04.26.02.44.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Apr 2023 02:44:43 -0700 (PDT)
Message-ID: <27f9be9f-66c9-49ab-ad4b-f73da3e729ba@gmail.com>
Date:   Wed, 26 Apr 2023 11:44:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: proctological linter warnings on groff's man pages (was: mdoc(7):
 CHECKSTYLE)
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>,
        Jakub Wilk <jwilk@jwilk.net>, Marcos Fouces <marcos@debian.org>
References: <d9b111c2-1ebe-e697-34c5-a7f01445568b@gmail.com>
 <20230422200547.jlc2cfvbyatzlpjv@illithid>
 <49b9b4b1-5500-e2b8-b20c-dfafa46a1e3f@gmail.com>
 <20230424053116.asfy4hz3da7hs23k@illithid>
 <cb3f3ddb-2ed5-192f-b373-7b1378cc66fa@gmail.com>
 <20230426090658.oboomd2tmmoyba6x@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230426090658.oboomd2tmmoyba6x@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------itfCUeuiGGXH0D0UyTVTTN05"
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------itfCUeuiGGXH0D0UyTVTTN05
Content-Type: multipart/mixed; boundary="------------s3mXft2wgUiwoFyY04pJCm7X";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>,
 Jakub Wilk <jwilk@jwilk.net>, Marcos Fouces <marcos@debian.org>
Message-ID: <27f9be9f-66c9-49ab-ad4b-f73da3e729ba@gmail.com>
Subject: Re: proctological linter warnings on groff's man pages (was: mdoc(7):
 CHECKSTYLE)
References: <d9b111c2-1ebe-e697-34c5-a7f01445568b@gmail.com>
 <20230422200547.jlc2cfvbyatzlpjv@illithid>
 <49b9b4b1-5500-e2b8-b20c-dfafa46a1e3f@gmail.com>
 <20230424053116.asfy4hz3da7hs23k@illithid>
 <cb3f3ddb-2ed5-192f-b373-7b1378cc66fa@gmail.com>
 <20230426090658.oboomd2tmmoyba6x@illithid>
In-Reply-To: <20230426090658.oboomd2tmmoyba6x@illithid>

--------------s3mXft2wgUiwoFyY04pJCm7X
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 4/26/23 11:06, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-04-24T19:11:58+0200, Alex Colomar wrote:
>>> At 2023-04-23T16:17:06+0200, Alejandro Colomar wrote:
>>>> I got some errors from mdoc(7), which were probably due to the
>>>> LANDMINE
>>>> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/et=
c/groff/tmac/checkstyle.tmac>.
>>>> Why is that file problematic with mdoc(7)?
> [...]
>> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/etc/=
groff/tmac/checkstyle.tmac?id=3D55bdf08d6d7f56280fe472902331c735bb7492f9>=

>=20
> It's not obvious to me why that macro file would cause any problems.

You could try if you're curious; since I already removed groff's
pages from my build system, I'd have to repeat the setup.  If you
want me to do it, I can.  Otherwise, I already removed that file
from the Linux man-pages, so we can just ignore this, if you're not
curious enough.

>=20
>> $ make check -k
>> troff: man1/gpinyin.1:316: warning: macro 'AD' not defined
>> troff: man5/groff_font.5:813: warning: macro 'AD' not defined
>=20
> These are expected if you format groff 1.23.0 man pages with groff
> 1.22.4 (or older).  I had to resort to some unpleasantness in those 2
> pages.

But I didn't.  I have groff 1.23.0-some-commit-around-rc3 in all of
my machines.  Maybe I installed it incorrectly?


I don't remember if I run this from my desktop or laptop.  Here's
what my desktop reports:

$ groff --version
GNU groff version 1.23.0.rc3.44-a241d
Copyright (C) 2022 Free Software Foundation, Inc.
GNU groff comes with ABSOLUTELY NO WARRANTY.
You may redistribute copies of groff and its subprograms
under the terms of the GNU General Public License.
For more information about these matters, see the file
named COPYING.

called subprograms:

GNU grops (groff) version 1.23.0.rc3.44-a241d
GNU troff (groff) version 1.23.0.rc3.44-a241d


Maybe I did something wrong and run 1.22.4 somehow.  Do you want me
to try again with 1.23.0?

>=20
>> troff: man7/groff_char.7:1582: warning: can't find special character '=
bs'
>> troff: man7/groff_char.7:1808: warning: can't find special character '=
radicalex'
>> troff: man7/groff_char.7:1810: warning: can't find special character '=
sqrtex'
>=20
> These are documented in the groff PROBLEMS file.  They are harmless.
>=20
> https://git.savannah.gnu.org/cgit/groff.git/tree/PROBLEMS?id=3Ddbd2b200=
7280f5125227307ff6962c0948366aef#n985
>=20
> The solution is to design and ship a small font to solve some glyph
> coverage problems.  I think we talked about that on this list last
> summer.

But that seems to be about PS, isn't it?  My I run was with -Tutf8.

>=20
>> mdoc warning: .St: Unknown standard abbreviation '-susv1' (#2540)
>>               Please refer to the groff_mdoc(7) manpage for a
>>               list of available standard abbreviations.
>> mdoc warning: .St: Unknown standard abbreviation '-susv4' (#2546)
>>               Please refer to the groff_mdoc(7) manpage for a
>>               list of available standard abbreviations.
>=20
> https://savannah.gnu.org/bugs/?55789

Hmm, this is fixed, so it seems I was using 1.22.4 accidentally.

>=20
>> $ make lint-man-tbl -k
>> LINT (tbl comment)	.tmp/man/man1/chem.1.lint-man.tbl.touch
>> man1/chem.1:1: missing '\" t' comment:
>> .TH \%chem 1 "24 April 2023" "groff 1.23.0.rc4.19-96b92"
>> make: *** [share/mk/lint/man/man.mk:42:
>> .tmp/man/man1/chem.1.lint-man.tbl.touch] Error 1
>> LINT (tbl comment)	.tmp/man/man1/groff.1.lint-man.tbl.touch
>> man1/groff.1:1: missing '\" t' comment:
>> .TH groff 1 "24 April 2023" "groff 1.23.0.rc4.19-96b92"
>> make: *** [share/mk/lint/man/man.mk:42:
>> .tmp/man/man1/groff.1.lint-man.tbl.touch] Error 1
>> LINT (tbl comment)	.tmp/man/man7/groff_www.7.lint-man.tbl.touch
>> man7/groff_www.7:1: missing '\" t' comment:
>> .TH groff_www 7 "24 April 2023" "groff 1.23.0.rc4.19-96b92"
>> make: *** [share/mk/lint/man/man.mk:42:
>> .tmp/man/man7/groff_www.7.lint-man.tbl.touch] Error 1
>> make: Target 'lint-man-tbl' not remade because of errors.
>=20
> I thought Colin Watson withdrew interpretation of this type of comment
> from man-db man, and mandoc(1) doesn't support it either.
>=20
> If I'm right, that would leave it without any consumers in Free Softwar=
e
> man pagers (troffs themselves, AFAIK, have never done anything with it)=
=2E

I received a report that lintian still uses it.  Maybe Jakub or Marcos
can confirm.

>=20
>> And here go the ones from mandoc(1), which is more picky:
>>
>> $ make lint-man-mandoc -k |& grep -v -e 'WARNINGS: invalid escape sequ=
ence'
>> -e 'UNSUPP: unsupported roff request' -e 'WARNING: invalid escape sequ=
ence'
>> LINT (mandoc)	.tmp/man/man1/addftinfo.1.lint-man.mandoc.touch
>> mandoc: man1/addftinfo.1:1:17: WARNING: cannot parse date, using it
>> verbatim: TH 24 April 2023
>=20
> I reject mandoc's attempt at date format enforcement.  While,
> personally, I prefer ISO 8601 format, our man pages' dates come from ou=
r
> mdate.pl script.  That's the place to change it, if anyone means to.

I also prefer ISO 8601.  I can prepare a patch for that.

[...]


>> mandoc: man5/groff_out.5:1921:2: WARNING: line scope broken: UR breaks=
 TP
>=20
> We have trouble with putting URLs in paragraph tags.
>=20
> https://savannah.gnu.org/bugs/?61434

Yeah, that makes sense.  When I saw UR and TP in the same line, I guessed=

it wouldn't be an easy thing.  :)

>=20
> But even if we fix it, mandoc(1) could well still complain.

[...]

>=20
>> mandoc: man5/groff_tmac.5:289:2: WARNING: skipping paragraph macro: PP=
 after
>> SS
>=20
> Another Berndism, or something I introduced while reorganizing sections=
=2E
> I _did_ revise this part of this page, and I managed to miss this bit o=
f
> untidiness.  Fixed in my working copy, will push to master.

Nice.

>=20
>> make: *** [share/mk/lint/man/man.mk:28:
>> .tmp/man/man5/groff_tmac.5.lint-man.mandoc.touch] Error 1
>> LINT (mandoc)	.tmp/man/man7/groff.7.lint-man.mandoc.touch
>> mandoc: man7/groff.7:5221:30: STYLE: whitespace at end of input line
>=20
> Can't reproduce.  I find no trailing white space in this file.

I'll try again with 1.23.0, and will confirm if I still see it.

>=20
>> mandoc: man7/groff.7:2:13: WARNING: cannot parse date, using it verbat=
im: TH
>> 24 April 2023
>> mandoc: man7/groff.7:778:2: WARNING: skipping paragraph macro: PP empt=
y
>> mandoc: man7/groff.7:828:2: WARNING: skipping paragraph macro: PP empt=
y
>> mandoc: man7/groff.7:2320:2: WARNING: skipping paragraph macro: PP emp=
ty
>> mandoc: man7/groff.7:4397:2: WARNING: skipping paragraph macro: PP emp=
ty
>> mandoc: man7/groff.7:5496:2: WARNING: skipping paragraph macro: PP emp=
ty
>> mandoc: man7/groff.7:5993:2: WARNING: skipping paragraph macro: PP emp=
ty
>=20
> Arguable, maybe.  The page uses some private macros, LS and LE, to
> temporary reduce the paragraph distance to zero.  Those were my
> invention, and I think they arose in discussion with you.  Have I left
> them off of my list of proposed man(7) extensions?  Maybe I have.

Yeah, I remember them (I named them babies :).  Let's keep them sleeping
until the final release.

>=20
> I don't feel guilty about piloting these page-private macros because th=
e
> document is already thick with them.  (It was written by a *roff expert=

> long before the Robinson/Schwarze man(7) portability summit of 2017/8.)=

> It will take a lot of effort to dig them all out.  Someday...
>=20
>> mandoc: man7/groff_diff.7:3280:2: WARNING: skipping paragraph macro: I=
P
>> empty
>=20
> Looks like a false positive.  A lot of man(7) macros are being thrown
> around to get a certain desired amount of indentation, but I don't see
> any superfluous macro calls.

Might be a glitch of using 1.22.4.  I'll investigate more with 1.23.0.
Maybe it's just that a lot of macros are confusing each other, as you say=
=2E

[...]

>=20
> Good grief, I'm only 34% through this mess.  I'm stopping here for now.=

>=20
> I'm not sure mandoc(1)'s linter is useful as a land mine trigger.
>=20

It found some bugs in my pages.  I count 10 commits where I logged that
they were triggered by mandoc(1).  Of course, I had to disable many
warnings in which I wasn't interested, but it's useful if you configure
it to your preferences (Ingo didn't want to allow such configuration,
but grep(1) is a nice way to workaround it).  Here's how I have it:

$(_LINT_man_mandoc): $(_MANDIR)/%.lint-man.mandoc.touch: $(MANDIR)/% | $$=
(@D)/
	$(info LINT (mandoc)	$@)
	! ($(MANDOC) -man $(MANDOCFLAGS) $< 2>&1 \
	   | $(GREP) -v 'STYLE: lower case character in document title:' \
	   | $(GREP) -v 'UNSUPP: ignoring macro in table:' \
	   | $(GREP) -v 'WARNING: cannot parse date, using it verbatim: TH (date=
)' \
	   | $(GREP) -v 'WARNING: empty block: UR' \
	   | $(GREP) -v 'WARNING: missing date, using "": TH' \
	   | $(GREP) -v 'WARNING: undefined escape, printing literally: \\\\' \
	   ||:; \
	) \
	| $(GREP) '.' >&2
	touch $@

$(_LINT_mdoc_mandoc): $(_MANDIR)/%.lint-mdoc.mandoc.touch: $(MANDIR)/% | =
$$(@D)/
	$(info LINT (mandoc)	$@)
	! ($(MANDOC) -mdoc $(MANDOCFLAGS) $< 2>&1 \
	   | $(GREP) -v 'STYLE: operating system explicitly specified: Os ' \
	   | $(GREP) -v 'WARNING: cross reference to self: Xr ' \
	   ||:; \
	) \
	| $(GREP) '.' >&2
	touch $@

(For the mdoc(7) one, I'll still probably add many more exceptions.)


Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------s3mXft2wgUiwoFyY04pJCm7X--

--------------itfCUeuiGGXH0D0UyTVTTN05
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRI8n0ACgkQnowa+77/
2zJOWA/+PmVICjOmEqTqjVkGcv0mC6Sdn/eC4o9Q0crpUhFEiMdox23UmVj0WARe
hvDA12ijkEDtBveOs95yZkrQq3u3uN7uljConqFtCWEH7tDSpu4/H65ijiW0moct
ADxGMAZgAtm6FCdyDjsKU/2CgkryRjITRWdnBO7lJ4OdAtRb+Ah3/aHrJ7scW7ky
d2xM7imZJrIXJRtrEuZl6TG7LqB3MPJKAr+iXhvTV9Iy7ZVt9fnLsltsqaPRMJok
Ru/Ny4Z4ykytICB3cB7gA8Lji0p/l6kUlP7mka4r+sJa1PaSJwoUJCgOfe1TnDam
/tWzyALYpaYiQIDBHmT4xpNqi1rwAm9sHcCdLDtcBjRd93fj00X5P+WFY0pFyodW
UYhwjxxdEMuSDhKv+Wtzv06fe9AteB3Ez5btyGjHHQd96w0n/ryMvcBd2SM4+2dV
+Pz6+Ui3va3PQnuKm0MO73QrYb6vwwQaPENsRJ8j4cnPv4TbEJdNGi+R/TJUhUKk
txdgqIDrGNGosfSFEGpWAa4fAJrQkLsm2HmdDJLwW29vwMDtGUKoUNo7qdqaaWfC
kraqxs8paLDIgpTo3lr78aXautry75NlYeHkCctjDgtR8Vc5xsGI39qiO/ZyjLh5
0yy7hr6AdjePU5YN1nMvGg4/PgRhU+faReunPqjhkP9UPVEy8J0=
=0S8W
-----END PGP SIGNATURE-----

--------------itfCUeuiGGXH0D0UyTVTTN05--
