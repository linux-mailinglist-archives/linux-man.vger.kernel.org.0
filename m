Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F0BD6B1255
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 20:45:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230101AbjCHTpo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 14:45:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229676AbjCHTpP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 14:45:15 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2508B5F511
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 11:44:40 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id j19-20020a05600c1c1300b003e9b564fae9so2093946wms.2
        for <linux-man@vger.kernel.org>; Wed, 08 Mar 2023 11:44:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678304678;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u8IWsNrKgOUC6ZZ51F+qRqcbdhJIgJdL1xwJVSsjwyE=;
        b=Ryfs/FJQMlyl/3PuBqAkSqqIv1+RwJTeYy3UStxy6XCO2UAnMMkrDy159MS5nj2DXW
         vLh/moRL1u8uCDm3S5HOiZBHNsREs9TKmW5uR+S3bbtT0mkL3xtxsqNG8eRn8HjVnOYG
         vMykn6NPc+MmHR94mqikY1FqmROTrj9RKACK4URXjDlnNgsBLtwNxBKELogs8+GD9Ri2
         0zR/DAtGe9/766vzbKCSELzNuKNkOUKqHLIIa+eH/OOpq/Ws5RmjVDZ3n2OH20sdtlSf
         LpACFYxaI3ZCoeghCd+UuCxzuzTk/NpSJGemtMxlhj2TGV4NiegYSdvcyK7dHV6Bm2xa
         OJsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678304678;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=u8IWsNrKgOUC6ZZ51F+qRqcbdhJIgJdL1xwJVSsjwyE=;
        b=5g+9ziWXvySkqAi3goMTNALBHvtaJwLvreBpD+FbxhIEyjXI2WM5VZWE+01QiKtWrt
         owLShujv5UAfY5X0cZ9+KovjkVSwl5gOt23evnPBOVvyNzXyFd3kCpWmLJJZKl/ejYGD
         ECGvL3t82+P3nDXxtiZfe8Y++uZ9VsDzxf2/m/KHLjPPewjMNrmYd3M2XZkGxEuMTkBp
         lLc+CHzMA2KEznPgJz58I125OUil74jWO0SYXXwJc1yFKFYr/726zToqDoUlICIV74Dk
         HaYNlzK+joTFtic6zDv+PEAp/z7+6S6HvRMXuW/zs78C//SkPSPTiBUMo+G/Pu1ogkyK
         MgTg==
X-Gm-Message-State: AO0yUKV7TxLmyZECE0bNqG3JeQPZf4lHVF8kNsj53ocO71goo5eqbhx+
        G6+WrteJdiQ8LgS1V1/M3eOIsH8D7WY=
X-Google-Smtp-Source: AK7set84ExuKjb/trqWNlMj59cBdT6c1b1cHgW5HbJMpcu4H8o85G1BSJc7mGhN+jxOkJqmWxEa0jQ==
X-Received: by 2002:a05:600c:3d8b:b0:3eb:578d:ded3 with SMTP id bi11-20020a05600c3d8b00b003eb578dded3mr18072987wmb.35.1678304677708;
        Wed, 08 Mar 2023 11:44:37 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id e18-20020adffc52000000b002ca864b807csm15951652wrs.0.2023.03.08.11.44.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 11:44:37 -0800 (PST)
Message-ID: <7eb92df5-6c87-8384-c4a8-2a00eabf1c8e@gmail.com>
Date:   Wed, 8 Mar 2023 20:44:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: mandoc(1) warning in tzfile(5) regarding //
Content-Language: en-US
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <884cb5d0-27ce-a5ca-b449-972021e62e92@gmail.com>
 <7c3294cf-e3d0-c716-d1c0-5b6c5c757d7e@cs.ucla.edu>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <7c3294cf-e3d0-c716-d1c0-5b6c5c757d7e@cs.ucla.edu>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xJ804t7Q7c9NRW0xKoVup1px"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------xJ804t7Q7c9NRW0xKoVup1px
Content-Type: multipart/mixed; boundary="------------3MjBrDbVE5sKC7nug5UFaDAE";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <7eb92df5-6c87-8384-c4a8-2a00eabf1c8e@gmail.com>
Subject: Re: mandoc(1) warning in tzfile(5) regarding //
References: <884cb5d0-27ce-a5ca-b449-972021e62e92@gmail.com>
 <7c3294cf-e3d0-c716-d1c0-5b6c5c757d7e@cs.ucla.edu>
In-Reply-To: <7c3294cf-e3d0-c716-d1c0-5b6c5c757d7e@cs.ucla.edu>

--------------3MjBrDbVE5sKC7nug5UFaDAE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Paul!

[reordered quotes for my reply]

On 3/8/23 06:19, Paul Eggert wrote:

>=20
> Come to think of it, we should resync tzfile.5 and tzselect.8 from=20
> upstream for other reasons. Proposed patch to manpages attached. If thi=
s=20
> generates more mandoc warnings, I suppose we can adjust the calls to ma=
ndoc.

Yes, I like having them as synced as possible (ideally, we would just
hold a simple copy in the Linux man-pages).  I've applied your patch.

BTW, I have some comments to make about the patch, and it would be
easier to make them if the patch was not attached, but rather inline
in the mail.  (IIRC, I also have a few comments about your other patch
submitted recently, and I haven't answered so far because I find it
cumbersome to copy from the attachment into the email to do a proper
reply; but I'm not ignoring it; just finding some time for it ;)
Would you mind sending your patches inline, if it's not much
cumbersome to you?  But I guess you may have your customs though,
so if you prefer sending them attached, that's fine; it'll just
take me a bit more time to reply, but I appreciate your contributions
anyway :-)

> I suggest reverting all those changes to=20
> tzfile.5, since the upstream tzfile.5 continues to use \(lq etc. for=20
> compatibility with traditional troff, which is still a thing upstream.

Yup, no problem with that.  I applied the patch to tz* pages by
accident.  It wasn't my intention to deviate from upstream.  I
just applied the scripted changes to all pages blindly, and forgot
to keep the external pages out of the patches.

> On 2023-03-07 15:54, Alejandro Colomar wrote:
>> mandoc: man5/tzfile.5:15:19: WARNING: undefined escape, printing liter=
ally: \\
>> mandoc: man5/tzfile.5:15:10: WARNING: undefined escape, printing liter=
ally: \\
>=20
> My guess is that this is fallout from last month's changes to use \[lq]=
=20
> instead of \(lq and so forth.

It seems not.  I still see the warning.

alx@debian:~/src/linux/man-pages/man-pages/main$ grep -n '\\\\' man5/tzfi=
le.5=20
15:\\$3\*(lq\\$1\*(rq\\$2
alx@debian:~/src/linux/man-pages/man-pages/main$ make lint-man-mandoc V=3D=
1
LINT (mandoc)	tmp/lint/man5/tzfile.5.lint-man.mandoc.touch
! (mandoc -man -Tlint  man5/tzfile.5 2>&1 \
   | grep -v 'STYLE: lower case character in document title:' \
   | grep -v 'UNSUPP: ignoring macro in table:' \
   | grep -v 'WARNING: cannot parse date, using it verbatim: TH (date)' \=

   | grep -v 'WARNING: empty block: UR' \
   ||:; \
) \
| grep '.' >&2
mandoc: man5/tzfile.5:15:18: WARNING: undefined escape, printing literall=
y: \\
mandoc: man5/tzfile.5:15:9: WARNING: undefined escape, printing literally=
: \\
make: *** [lib/lint-man.mk:88: tmp/lint/man5/tzfile.5.lint-man.mandoc.tou=
ch] Error 1


I don't run these tests often, so I'm not saying this is a new warning.
It has been there probably since forever.  It's just that previously
there were many other pages that gave warnings, but now I've cleaned
most of those, and your pages are the only ones --together with
bpf-helpers(7)-- that trigger warnings from `make lint-man-mandoc`.


And now some question about the patch itself (I've applied it, but
there's something itching me):

> commit bab8324d213362bbb59434748797a0cddcbefecd (HEAD -> master, korg/m=
aster)
> Author: Paul Eggert <eggert@cs.ucla.edu>
> Date:   Tue Mar 7 21:11:38 2023 -0800
>=20
>     tzfile.5, tzselect.8: sync from tzdb upstream
>    =20
>     This makes tzfile.5 and tzselect.8 a copy of the tzdb develoment
>     version (commit 12b48faf10c265ee3ea1aad8cdb5c8239eea65a0), except t=
hat
>     man-pages boilerplate surrounds the copyright notice, and the .TH l=
ine
>     uses man-pages format.

I guess you referred to the TH line in the tzselect.8 page, which
doesn't show a date, has the project and (unreleased) version in
the 4th field, and has no 5th field.

>    =20
>     Signed-off-by: Alejandro Colomar <alx@kernel.org>
>=20
> diff --git a/man5/tzfile.5 b/man5/tzfile.5
> index aa2170479..e94aaaad6 100644
> --- a/man5/tzfile.5
> +++ b/man5/tzfile.5
> @@ -1,21 +1,21 @@
>  .\" %%%LICENSE_START(PUBLIC_DOMAIN)
>  .\" This file is in the public domain, so clarified as of
> -.\" 1996-06-05 by Arthur David Olson <arthur_david_olson@nih.gov>.
> +.\" 1996-06-05 by Arthur David Olson.
>  .\" %%%LICENSE_END
>  .\"
> -.TH tzfile 5 2022-09-09 Linux "Linux Programmer's Manual"
> +.TH tzfile 5 2023-03-07 Linux "Linux Programmer's Manual"

I don't like this TH line, because:

-  The 4th argument is supposed to specify the project and version
   of the upstream manual page.  That should be your project and
   version (similar to how the Linux man-pages pages have in the
   latest release "Linux man-pages 6.03").  For example, another
   page that is synced from upstream is bpf-helpers.7.  It has the
   following:

       $ grep '\.TH' man7/bpf-helpers.7=20
       .TH "BPF-HELPERS" 7 "2022-09-26" "Linux v6.1"

   Would you mind specifying your own project and version upstream
   so I could keep them untouched?

I'd also like if you specified the last-modified date when you
make a release, but if we sync the page from git HEAD that's less
important.  You could do something similar to the placeholder
'(date)' that we use, and somehow update it at release time.


>  .SH NAME
>  tzfile \- timezone information
>  .SH DESCRIPTION
[...]
> diff --git a/man8/tzselect.8 b/man8/tzselect.8
> index 2319c6158..3b69587f3 100644
> --- a/man8/tzselect.8
> +++ b/man8/tzselect.8
> @@ -1,53 +1,128 @@
>  .\" %%%LICENSE_START(PUBLIC_DOMAIN)
> -.\" This page is in the public domain
> +.\" This file is in the public domain, so clarified as of
> +.\" 2009-05-17 by Arthur David Olson.
>  .\" %%%LICENSE_END
>  .\"
>  .TH tzselect 8 (date) "Linux man-pages (unreleased)"

And don't really like this one either, since it looks like
the Linux man-pages is the upstream of the page, and it's not.
I probably changed this also by accident in some scripted patch.
I realized and avoided it for tzfile.5, but forgot about this
one :/.

>  .SH NAME
>  tzselect \- select a timezone
>  .SH SYNOPSIS

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------3MjBrDbVE5sKC7nug5UFaDAE--

--------------xJ804t7Q7c9NRW0xKoVup1px
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQI5Z0ACgkQnowa+77/
2zLNXhAAqmaDqB+2VtfgAsCojsnseM/Zf4IL7bVdZvto6otPm2QsbbNc+fQIBe3I
Uyt479qoiUPh3UH4IJqRuoSvwDfhxJSix8vkoEVDSzcSYgWwPrWSzpSy0dmu2894
B+/5Q1fJ4O7m6FkfeQaFi3+LvdIn54WJmHv3xWrtMTpLOQJlrfdO7la7d4teGJ8o
5bouv7YlDc6NxTIDI9NaI/Yj3ZuEsZQtFcTTql3F7iUcdLQW7DwcCNGWkC1RfvjG
3pCB60NFvOD2NeRMFNZ5s8CrjyQB9t2cEyQYQmdl2zw2HMwTS5/c1U2YU6ntiAua
z5MQL1DJYU7v5vycSrAPEwPRT3RgF1UTKjyoMoZka9yM2wRjwhamYtxAVzgPMF/f
wCYMnLquUpbS7ionsXtH2V8gWQIlepcxUye0Os3yK75+iLFbBNgQF2mW3EWpOZ1d
Lryy6+amOGDJnj9DXpkeuA6xDlj2sle0IyMaU5Qye4PZaASMALZwhV5OPys6OqSc
QpufYrFYMAQUl2ZgGhewrtHcMWEtvsnSFYHmXs66JKSA5M4LmjP6ydJVneQK/KBp
s5Sd15+Wd0AQ99aAvSTB0ajWQ3UNMbY851mVxJBoWP7kRQDEgFmOrPwMnSGXOxK4
bVrYlPAfXBswAZBcGizjrEVQyK6ICtAwK+Yegy+7mgBIEBpQuws=
=UQOi
-----END PGP SIGNATURE-----

--------------xJ804t7Q7c9NRW0xKoVup1px--
