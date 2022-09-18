Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 120145BC083
	for <lists+linux-man@lfdr.de>; Mon, 19 Sep 2022 01:18:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229612AbiIRXST (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Sep 2022 19:18:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbiIRXSR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Sep 2022 19:18:17 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3C51EE21
        for <linux-man@vger.kernel.org>; Sun, 18 Sep 2022 16:18:14 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id w125so12673291oig.3
        for <linux-man@vger.kernel.org>; Sun, 18 Sep 2022 16:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=I0Oqgemo8dgpzGXOCCQROEiqXZMSDuiNP5hUw2qsCYU=;
        b=fYJ6vF2fMoKKozJ5nnEh0mD9OLv6GMJbAJgrV++dZhG3AxNuZyBNt1HbHWulz0QmY4
         VawFdO0yBwMf3OanzPec8mUvcEFM0uhgHFM4bO7dGjI3McH1BoVNvApGGX72jTYZ74Xu
         /AKxhhLM2LeK9JJpRZfyhcew51l0TFZohW27NfK8XNOW0ZBUnDrcQuSFiYgKTFn+jth5
         /XlZRJrdsHzP2nKjs2k6OaqGe40+gmJuk18USVXQOyxJk1YZUxK013Qh64H3efQf73Ra
         lievltq0T0Iw0qf46gCuFOJPP6pqYSum//JgmBVwdkp76kVmkNlMYk1+VV4NSbhi19Sh
         FFrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=I0Oqgemo8dgpzGXOCCQROEiqXZMSDuiNP5hUw2qsCYU=;
        b=YrucH+s7QKbxqaaLdebhAKKyGnVSFiivVrtPJzvHn58h7Rxo87NlkOn2dp+RYjqLSS
         Qy5/K/DpD2d8nA2LDwFe7qH9Hxbdq7+j6ubhbcXlQHdu+dmgxwoxXU7PDxS1hXL3JqKp
         bXY0NXtM2TSOjRiQ7X6T2ZDfdfnMF/cBQOZx9cv5jF3ZjcToigi06kUcjDq6huXQSgiK
         W9nikjTL+zsFeKoN1jMf9PtqX2fOf4+GJBvExDWT1w2vuivh1fZ78aWW1XLTP2gm0792
         w22C3hKKi94nXy3v3S6XCsocneSdca/oqA8e4EGzxGqNZyP6PSFlEA2V7k+P6FV8ubEF
         18Sg==
X-Gm-Message-State: ACgBeo2N/8LAGJwlZELpkbhCihqrWssgXFZl0g6xyA/v2gPFfTsL+0Vq
        eNxlf+AnlCFrNIcOGziV6eB5wMr2CF8=
X-Google-Smtp-Source: AA6agR6TEdUnEd3iU4LAXFXo+a64JPKC3yH8NA6VL001wErOiEtSNqUOP7EkvhBAQLY0lbUmTkt8Rw==
X-Received: by 2002:a05:6808:3010:b0:337:b782:842a with SMTP id ay16-20020a056808301000b00337b782842amr10934235oib.117.1663543094329;
        Sun, 18 Sep 2022 16:18:14 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id t16-20020a9d66d0000000b0061c9ab1032dsm13247009otm.18.2022.09.18.16.18.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Sep 2022 16:18:13 -0700 (PDT)
Date:   Sun, 18 Sep 2022 18:18:12 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alex Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Walter Harms <wharms@bfs.de>
Subject: Re: [PATCH] register_printf_speficier.3, register_printf_modifier.3,
 register_printf_type.3: Add new manual page and links
Message-ID: <20220918231812.htiqn5b77reriljg@illithid>
References: <20220918221640.19942-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="oyu4qm5mkowigbnp"
Content-Disposition: inline
In-Reply-To: <20220918221640.19942-1-alx.manpages@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--oyu4qm5mkowigbnp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2022-09-19T00:16:41+0200, Alex Colomar wrote:
> I wrote this manual page after on an old discussion with Walter,
> which I postponed too much.  I had a long time ago written some
> using register_printf_specifier(3), and I remember having a lot of
> trouble using, since there's few documentation about it, if at
> all.  I had to guess much of it.
> Well, please review this page, and comment anything you don't like.
[...]
>  man3/register_printf_speficier.3 | 439 +++++++++++++++++++++++++++++++

Well, for a start, I'd spell the new file name correctly, avoiding a
controversial git rename in the future.  ;-)

Regards,
Branden

--oyu4qm5mkowigbnp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmMnpywACgkQ0Z6cfXEm
bc6djRAAqkoSP6hG35VL9WTb4qI3qctF3jrBEpnnkrXJPNS+S78VVaGBBOBbRF0k
UKWrVZJVoxFsJvnhbM9Na0LzJW1VFhpHKxw4aubrvTJhxnFdTGjEK5qFm8TkYzRi
mjUOHoUJgQ9UZD6+ouKqL3jVUULDjeV2623YSYQAZ7n9p1jZCFzpohviStf91F0V
oqD74w6SfNpQZRGwL1U1Wy7QrSnR07r/sAazTHbtCyXlQ748JNm9egkwbAwp7crJ
DHJRfTvNO315ULnVscnTIBlTTyL0/f6aKofIgMgpx0vkM/xMjy/Z/4jJeum9QeKn
3+eGX6Iq2dnbGP9USHmxhnrqq7YN0xCWv9ENd93UwiCZQo58gkvqJ43XpmrEoufr
QOMEREfljNS+JF4WfyrDjyqyGBHUCR1KZfef1Eg+TeaPEMDWpnvUR1ZbsocoPUU5
RRh0BdTuaDhSrzyR04KqphiKZGVg/ZJxVoXLjyvKmR8GTpI81WO/6EUIjFZPjcCk
IT5YjKiDrytACxP+S7Dx1/vksByY75DcL4TNsuSzrAm24ANVSB59lbtTIJjlI4sS
ToJgjFKvKOuX2FI75odJgcDBuWnQqmDXTsMptyrdWspiP/lbv3ALUK6Ce9BzRXKS
el9FoGJzgMMNLWCxRUcTIWH7rlb7pPbrxSER80ohvyL/o7dSp/E=
=kIV3
-----END PGP SIGNATURE-----

--oyu4qm5mkowigbnp--
