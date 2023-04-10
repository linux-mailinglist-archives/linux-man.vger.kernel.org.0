Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E8A16DCC10
	for <lists+linux-man@lfdr.de>; Mon, 10 Apr 2023 22:24:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229649AbjDJUY0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Apr 2023 16:24:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229640AbjDJUY0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Apr 2023 16:24:26 -0400
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com [IPv6:2001:4860:4864:20::2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4DB21735
        for <linux-man@vger.kernel.org>; Mon, 10 Apr 2023 13:24:24 -0700 (PDT)
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-18436e0b673so6517691fac.0
        for <linux-man@vger.kernel.org>; Mon, 10 Apr 2023 13:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681158264; x=1683750264;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h67bjSTwbmVoF6JEWCIonaDXUVjrRDs5uWZE5FAJA/Q=;
        b=dFBJ9NlOBmzxYxnSkoCO05/6TTAQqc424pe59q5p5v8bHI5UwglUc5N64Rbb9EgVQb
         c3CpDfWnxRdqpPZzsHMc76OsRGr7+idWPd6AYeqYZ3lW2A5LNwTt7qv7EfJIKU6hELT0
         /xhiljh9WT0Rfx8NUSSMt5LJT6wzzeUUngUyZ8IKctPWRasOgq7X7dDohVf7N0exlR86
         U+fR86tzL34ZBbuMYwKkD1ftbaB+RkKmJixI4ClQlF8TzxfSspv6m6/LRtBVv11LFGFv
         RVypcMPQX4mF5cmXKyvURnj1SS/7V14JTDt8KpUa6Oiw99g4HVILoUkeRX5C0hfssdM+
         T++w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681158264; x=1683750264;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h67bjSTwbmVoF6JEWCIonaDXUVjrRDs5uWZE5FAJA/Q=;
        b=QpZS47vS++Rocli59X8OQyeWSA1xAlFZIjfJNndji23m+JL19AP+b7IlqvLIVRN1jb
         8Z9DDNqI+TK5gfFaspTRZLiGwMA0ZPJLu+C7iLvxFVucgIOu++sCYSGHQ2pkeNiQsqyr
         acmrrunrnDtdMqceyKD7bXuFKvAMzGJcigb0tKxM8GHPGLXGsYzgtwm8IZd4USxDVS4d
         hvDpFuxLFSSQtSePugGWi2WbBx90MDRaAyq4Yyxo0WELD1frrdoncCgYdbczWvR1XsK5
         TrcZ7BxQi/k4aWgUD73jxOLL3qxtYUxSqi2qTyvwAS8yASLmjWPc7tdWVi+btro8vNHm
         Y+aQ==
X-Gm-Message-State: AAQBX9crHxLdFoUOUjJVYABS8+ENeU4quzvQ9ZV5e2RaOeHEzqwj7f88
        AluC3cM6P8nNbB7e1pj8sI4=
X-Google-Smtp-Source: AKy350bBxmmyRAulbAk+WerWW9rHpYGdtWOQRE67GeEI1nfukieNJxYPadYukPlEBa0r1qiIwoLriA==
X-Received: by 2002:a05:6870:c590:b0:17f:7dca:8926 with SMTP id ba16-20020a056870c59000b0017f7dca8926mr6417373oab.20.1681158264169;
        Mon, 10 Apr 2023 13:24:24 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id g4-20020a056870d20400b0018045663fc5sm4425281oac.48.2023.04.10.13.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Apr 2023 13:24:23 -0700 (PDT)
Date:   Mon, 10 Apr 2023 15:24:22 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Dirk Gouders <dirk@gouders.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Eli Zaretskii <eliz@gnu.org>, linux-man@vger.kernel.org,
        help-texinfo@gnu.org, groff <groff@gnu.org>
Subject: Re: reformatting man pages at SIGWINCH
Message-ID: <20230410202422.s4xdqcdxzsgdge7v@illithid>
References: <ghileoo9dk.fsf@gouders.net>
 <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid>
 <c704777c-bd1b-08d7-df63-7570d69b709e@gmail.com>
 <ghwn2nl4yn.fsf@gouders.net>
 <3f802d85-99a2-a9b9-ec5f-9e3067fdfc61@gmail.com>
 <ghsfd7k16z.fsf@gouders.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="dyq2ludqvkigdbja"
Content-Disposition: inline
In-Reply-To: <ghsfd7k16z.fsf@gouders.net>
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--dyq2ludqvkigdbja
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Dirk,

At 2023-04-10T21:05:24+0200, Dirk Gouders wrote:
> This relies on the assumption that horizontal resizes don't create or
> delete emty lines and it still has the weakness that manual pages
> (e.g. bash(1)) contain large areas without empty lines but it's
> definitely better than just staying at the position as it was before.

I think this assumption should hold for man and mdoc documents rendered
by a *roff--I'm not sure about mandoc(1), but it probably will for
reasons I'll elaborate below.

Vertical space in *roff documents might get reduced at page breaks, but
not to zero, except at page breaks.

There are a few reasons that I think reinforce the assumption holding:

1.  man(7) and mdoc(7) don't offer macros for just sticking an arbitrary
amount of vertical space into a document.  If you want that, you'll need
to go down to formatter requests, which is seldom done by human man page
authors, but a bit more frequently by automated generators of man(7) or
mdoc(7) from other formats.

2.  Even in traditional *roff, if you issued an ".sp 6" request
(demanding 6 blank lines), then if you were within 6 lines of a "trap"
(usually a page footer trap or the actual bottom of the page), the
result would be that you'd get blank lines until the trap sprung, and
any excess would be thrown away.  So if there were only 4 lines of
distance to the page footer, the leftover two would be discarded and
_not_ appear after the header of the next page.[1]

3.  mandoc(1) and groff's man(7) and mdoc(7) macro packages both
implement "continuous rendering" for terminal output.  This means that
they contrive to arrange for an effectively infinite page length, so
there are no page breaks.  (Except when you render multiple man pages at
a time, a use case groff 1.23.0 will support.) Since pager programs are
applicable only to terminal output in the first place, this should
address your use case.  (You _can_ turn off continuous rendering in
groff, and see man pages as they would have formatted for Western
Electric Teletype machines, which printed to long spools of paper with
66 lines to the nominal page.)

4.  A habit has grown up among man(1) programs and pagers to call for
and support, respectively, a "blank line squeezing" feature: any runs of
more than one blank line are condensed to 1 blank line each.  In groff
1.23.0, this will no longer be necessary when continuously rendering.
(Historically, this squeezing feature was used to "tighten up" vertical
space after the page header, prior to the "NAME" section heading of the
document.)  In my opinion, pager programs should perform as few
transformations as possible on the output of grotty(1), the groff output
driver that supports terminal devices.  The long-time author and
maintainer of less(1) does not agree, so you have to call that program
with its "-R" flag to view grotty(1) output as groff intends it.  (To
see what those intentions are, format the document without paging it.)

> If it turns out to still be too weak, I could count all words between
> two empty lines and set that in relation to the words from the
> preceeding empty line.

You might do this only as a fallback, if there were no blank lines on
the screen at the old window size when the resizing event happened.

> But perhaps, I now learn that empty lines are by no means that
> constant value that I assume...

In my opinion, the presence or absence of a single blank line in
formatted output is important.  groff 1.23.0 will feature some bug fixes
with respect to their handling within and adjacent to tbl(1) input.[2]

Since I flogged groff 1.23.0 three times in this email, I suppose I
should point people to where they can get the 1.23.0.rc3 release
candidate source archive.  Feedback would be appreciated.

https://alpha.gnu.org/gnu/groff/

Regards,
Branden

[1] For example, give the following input to "nroff | cat -n".

--snip--
.pl 10v
.nf
The page length is set to 10 vees.
2
3
4
5
Asking for 6 vees of space now.
.sp 6
How many appeared?
--end snip--

[2] https://savannah.gnu.org/bugs/?57665
    https://savannah.gnu.org/bugs/?49390

--dyq2ludqvkigdbja
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmQ0cG0ACgkQ0Z6cfXEm
bc6GzBAAoHfNAEVgnjzQeLaKpqgUvZ/RsZvuu5vdNmhPwv7aIKd/f1/Tdm77Dk5E
ss2IGa+UIcdjAwD51d5nTqnaTXyg0c/YYU4rI3W9ofup7xFDusNdVYMi7siEwtnL
ZJL5QDqHl0MzvUwYf4UywR9mHQveVbfnfMgBLdMpzb2m+QTT8PIXzMecpeTbyo3Q
GSJAjf+egK6MVKT+vXsKIy0Mo4kr3DUva3o5zszUdKAsHk+n3fznZyY3Yi3P/5WR
h0w8iaD5biw6QL/2mKB/NVV04mW1WbJvFIfIR3NJd6yXfUtGo0jo7IHReKX71FUj
IZBm9DsRhDc9IZmC63Ud+G2qA5yvxFzt1lhj0lwwK7BXgOQjrxzEchcW2EkQVcbL
/rHZj/a0VnuZ+CVXsjEMGct8+u+kYZORWLSBiUK677xVT4Rsdjw+rFrVooy4uEe3
kHT4ZGfDDh6GEyUXOG0AIH675uZL+C6pHodhojhJMw/ERM+p+MORZR5dktjClOYE
ay2paR9c8ZzP4txJJ8ze/P4DardFO2AEW69hdY6vf5WPttozne/YaVJpgOBD3qUc
NszJ8kpp2Z1v/1xSfkgrOndQuIV2T82ckFvt7OUvNp91lwjDaKiobQTjy3TyIJTS
jr9aAkAWzmVknOq4MyNg1wE88RzKibp50a4+vxqNZY96A97UOSk=
=LS0b
-----END PGP SIGNATURE-----

--dyq2ludqvkigdbja--
