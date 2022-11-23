Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08475636C7E
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 22:40:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235141AbiKWVkZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 16:40:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236160AbiKWVkX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 16:40:23 -0500
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A6EFAF0AF
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 13:40:22 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id n186so20405259oih.7
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 13:40:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Zg18KX5FxxihSb5M7HLtrAQzy8kLpHKiVcaA+Ldnl2A=;
        b=OxCcXX+ijHq/fzPWxxIuBwg0KDIsxaeJ+7Qbi9UejQMCDEagXw7aWr9WZcX7GPym4w
         XuoNcXwXSXgkLvXMl3pQAA2UATq1SQQpJcIc4I9lWaNbbwZp1esp+OUKYhjhCAK2Z46R
         Fk8CagPe+SfJ3LV9rHNfo7xHbikdlgAMNJReMgUUA22vMzFWPnMO+TttofInV1g2MrQ2
         XbXwdDmdMwoE3IrHr+1U18+osjUgQGI7pZt5BuDqZo4IH6ww3ff4r6WnccSDRKss08PH
         XmVfRiyGGSMAccVEjJXgxp0Yygj5Ip0f4MG4DGDQK7CuTiZrNQpZ6PjNUP0YnA4ocVdg
         y3wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zg18KX5FxxihSb5M7HLtrAQzy8kLpHKiVcaA+Ldnl2A=;
        b=Ik16zALEKw3NdS+4RCwr217TpRE2gmJp+PufiZ9vhaElqT5QmANrcdssMdcCSUYIoO
         E29b0mOGuMN/6e8GVAciX3za3y2+uDGQvwtl4LWoB+KGSUFBP4HzbVAm37j4VYYBNZ10
         /G/qcJ96NjTs35tpYPwYHIYTSxL2DmTT+3qI1xC2jXms87JvKmwHzgXMxIUmO1oq/ABD
         qkT5jldVZSjVnilaBgnIAhf+PZAA6a3ntMJDOg7bgjNFfNhyaPfKNSpa6+TjGg/fN6G+
         sJsdGfip9LQGbvoo4PiNZPUgTe4nYDpRD/t5faL1gjmwejUCKFGCWivbqnXSXhLwxMzM
         wgBA==
X-Gm-Message-State: ANoB5pmNIdCwxi04eyCBMXtaTfGmxFFvGGCeEaa20l2tRD/ma4vEPqIO
        Oazp9ua9D2kj2DDoq9yjt1lmso2qqcGoHQ==
X-Google-Smtp-Source: AA0mqf5DczD7TeWUks/pvLkDyLdmk1YIEBkIt8OgbbmUyQrnGxdD85phn8UIhBETUR+8Z2QIHLY+wA==
X-Received: by 2002:aca:5d0b:0:b0:359:e427:fe76 with SMTP id r11-20020aca5d0b000000b00359e427fe76mr6592754oib.232.1669239621808;
        Wed, 23 Nov 2022 13:40:21 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id q3-20020a4adc43000000b0049427725e62sm6640361oov.19.2022.11.23.13.40.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 13:40:21 -0800 (PST)
Date:   Wed, 23 Nov 2022 15:40:19 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Time zone mailing list <tz@iana.org>,
        Paul Eggert <eggert@cs.ucla.edu>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
Subject: Re: Doubts about a typo fix
Message-ID: <20221123214019.6w2cv525fmr3akdr@illithid>
References: <842adff8-8d8c-b189-8e6c-34be111b8b19@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2pxcl3lnrngipbva"
Content-Disposition: inline
In-Reply-To: <842adff8-8d8c-b189-8e6c-34be111b8b19@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2pxcl3lnrngipbva
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

I'm not Paul but I think I can address this item anyway.

At 2022-11-23T20:31:22+0100, Alejandro Colomar wrote:
> I don't undertstand the commit shown below.

> @@ -145,7 +145,7 @@ .SH OPTIONS
>  31-bit signed integers.
>  On platforms with GNU
>  .BR date ,
> -.q "zic \-r @$(date +%s)"
> +.q "zic \*-r @$(date +%s)"
>  omits data intended for past timestamps.
>  Although this option typically reduces the output file's size,
>  the size can increase due to the need to represent the timestamp range

> It breaks the '-' symbol,
> which now is a hyphen.  See the table mentioned yesterday:
[...]
> So, at least, it should be (but I believe the initial code was correct):
>=20
> .q "zic \*\-r @$(date +%s)"
>=20
> However, I wonder what that \* is intending to do there (I can see no
> difference in my screen with or without it).

Your second point addresses your first, because the zic(8) man page does
something old-fashioned: it defines a string for the minus sign.

On my system, the page has this in a sort of prologue.

    27  .ie \n(.g \{\
    28  .  ds : \:
    29  .  ds - \f(CW-\fP
    30  .\}
    31  .el \{\
    32  .  ds :
    33  .  ds - \-
    34  .\}

You see no diagnostic--I expect you have warnings turned on--because the
page has defined a string named `-`, and the *roff input `\*-`
interpolates a string named `-`.

Strictly, this string definition should be updated to use the font's
minus sign even if the formatter is groff (the `.g` register
interpolates a true value).

  .ie \n(.g \{\
  .  ds : \:
  .  ds - \f(CW\-\fP
  .\}

Most people won't see a difference because groff 1.22.4 (and earlier
releases going back to, I think, 2009) the man(7) macro package remaps
the hyphen to the minus sign on the 'utf8' output device.  This will be
changing in groff 1.23 to improve consistency with man page rendering on
typesetters.[1]  Workarounds are documented.[2]

I also note that "CW" is an old, AT&T device-independent
troff-compatible font name.[3]  groff's preferred name for this face is
"CR", because for the past couple of decades a monospace font (often
Courier) has generally been available in all four styles (roman,
oblique, bold, and bold-oblique).

All of that said, I wouldn't switch to a monospace font just to render a
dash; not if groff is the formatter.

Paul is more of a battle-scarred veteran than I am, so there may be a
good reason to define this string on proprietary Unix systems--tzdata
has to be _really_ portable--but on any system using groff or Heirloom
Doctools troff, I can't think of one.[4]  mandoc maintainer Ingo
Schwarze and I both recommend against performing string definitions, or
interpolating strings, in man pages.

So I would see if it's feasible to get away with dropping the definition
and use of a `-` string altogether.  But if not, there's no _validity_
problem with what Paul has.

Regards,
Branden

[1] https://git.savannah.gnu.org/cgit/groff.git/tree/NEWS?id=3D23ffa46c8c95=
1fec1d23dfe4b0dbbbe1299fa5d2#n193
[2] https://git.savannah.gnu.org/cgit/groff.git/tree/PROBLEMS?id=3D23ffa46c=
8c951fec1d23dfe4b0dbbbe1299fa5d2#n68
[3] https://github.com/n-t-roff/DWB3.3/tree/master/text/devnroff
[4] I don't know of anyone using neatroff to render man pages, but that
    may simply because I haven't seen them speak up about it.

--2pxcl3lnrngipbva
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmN+kzsACgkQ0Z6cfXEm
bc68RA//UD2HmVZnnXsHZknHPkLEbZcIPdhjarGujrM3i6Si2uveoBs9TTAgvHwj
7SC2RnKkxAhfLeZIRiFLuU/yooH+8jVrDfXtpBwvdb+DPokQzY3NuakHj1qDKEZW
rMa6tPoMZimrQHYOk5elTPPLgr3PDa5cgyf73GcUvDqIHgIh8Im1W2LCl/g2BVhT
P1FRZyYnXQb/Le0oa5reA2dhesuwr1MdPEMDtreWgdDhcYo4ervaWBfQC7y/Hj+B
Ow+1MieJ8aYucMDVeWga5tRqglil9rR4yYdCmZ4IGlN05012GgPfDlUdBMcpHSp7
8V8aL3DVixvhxN8nkQ7jethy6l1MDpgJJ8QZgi7m3aW/pCIabefVQbobc6FPhFaP
C/A/dbeguFof0VpTa/vSvGKQiX34Ut1pRtiZc+bskof+VXKdySCAl1i1Ud9RVlPv
hI/WlR/LMeEElaHH2T5JtePm5ZvBkh6ONtL/H3Cz9sFLIgmhIYv+zSLI56rrybe5
fUyB6lcmvguKDdfqAx7O82ee/z0BbPt8dtTgIUyK5z3hLiRpgDyfM4TuHYn2v5/u
7wDzT3fovSwguiDJsn5vbFRmGocOVVQ9z2yKbskSnpxGaWUMo/K23FoU0Xy6YfIO
gY8ecE0BxPHqFm5nkrs5544MqSJ8nNWsCTKyo0Ku9InXXaFqwVo=
=nZys
-----END PGP SIGNATURE-----

--2pxcl3lnrngipbva--
