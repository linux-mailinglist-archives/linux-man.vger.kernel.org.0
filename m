Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE6F5768658
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 18:13:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229457AbjG3QNJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 12:13:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbjG3QNI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 12:13:08 -0400
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com [IPv6:2607:f8b0:4864:20::c33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B45E102
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 09:13:07 -0700 (PDT)
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-56cbea15415so154861eaf.1
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 09:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690733586; x=1691338386;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tQBrl6fHnwpON7TZFeo/oIBfhhpOCYvai3NJB7jkUY0=;
        b=sgrdo/UZuSmJ2p7Y1sYtjS3hn9OfStkYWMISCViduOvqxwJFkjigMvT1E6umX36c7W
         S674tXHn47K+ATGhkfkM5NulERz8y9mlibiLI5ix+HK6jYRK2yqw5JX157ho15RAvQxz
         ERU47Rvacd/FNWBoDhm2+7nQFgJAM5nIYAFB5F6sAow7T84U7ISPOkF/uvwy2VX7rMsV
         /9HnErtEezuS/7CyijG5BN7oKBSi50aJ06Gt2COMq18L0zFcsJrgK4pBgJW8zG6qudwG
         eC5lLVxffN2gGI6X3vxWgc/Q3LKgmTdNiVLYs1+tv+E/xcJu1COPSDHpogThpcPidhO/
         Ax9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690733586; x=1691338386;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tQBrl6fHnwpON7TZFeo/oIBfhhpOCYvai3NJB7jkUY0=;
        b=g26yTSmy0n+XWjYq0+hOUeuew6DwOEwpV2W9sSsMzHDxsKBfr5U6voVVIBNRkBxi1K
         6VKJ5/cGIC7h1egVKAGGFEqDMMXy3nFmuHL6b9/eSzySDuQl8L/HzH5AJ5NSYrg7IgFJ
         MTeadwBPPN3RqNmTizfcFcpGq3GaWRadsGk2B9ZDthyaBOXO9RfrL2rI+8J9dNOfvUYo
         eHjDY28EZAiM5quafm5ZfIvueb1cQpe4Zhtt47RGqkESsKKQKr2GBLZpTUD2FGPnHfvV
         +Yw5vAzo2n6x5Kem9rBAh2v2HqhYQZ80k2Uo8eaKp5nFtJ1ALApfIF5OHLSXMOEk+a+i
         QKvQ==
X-Gm-Message-State: ABy/qLaPg/efWL8D0pK4gNCnvfD8NTY2TnnEOWcn0Du3j93sw50JJccL
        t+w7eIc/ojazJhAxkEUIipxrc4dN7MtTOw==
X-Google-Smtp-Source: APBJJlEjCwcy5Ee5V6bnru6iz0WyQ2U+fl9dMsGqKE8KBFzNiUbq/jlDcTxVyrlbNe5md+x/VNcxFg==
X-Received: by 2002:a05:6808:314:b0:3a7:250a:7948 with SMTP id i20-20020a056808031400b003a7250a7948mr1651003oie.13.1690733586732;
        Sun, 30 Jul 2023 09:13:06 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 189-20020a4a09c6000000b0056c589d98bcsm3064575ooa.1.2023.07.30.09.13.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 09:13:06 -0700 (PDT)
Date:   Sun, 30 Jul 2023 11:13:04 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: Spaces in synopses of commands (was: [PATCH v3] time.1: ffix)
Message-ID: <20230730161304.ywc7jyz7hlbjqpsd@illithid>
References: <20230730152149.ajvi7zhskzzsp5jz@illithid>
 <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
 <20230730154541.uitln7ioq4bw6xkq@illithid>
 <02dce126-966c-b7f8-4b26-2fb6ce11b30f@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="6zbxnlw5nmef44xg"
Content-Disposition: inline
In-Reply-To: <02dce126-966c-b7f8-4b26-2fb6ce11b30f@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--6zbxnlw5nmef44xg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-07-30T17:49:28+0200, Alejandro Colomar wrote:
> I agree that having a space between an option and its argument improves
> readability.  However, between a positional argument and the ellipsis
> that marks that it can appear multiple times, I don't think the same
> reasoning applies; at least not so obviously.
>=20
> I'm referring to  [file ...] vs  [file...].

Oh.  The point of this is that the arguments (operands in this case)
remain whitespace-delimited, where it might not be the case for a
repeatable single-letter option.

foobar [-adX] [-v...] file ...
foobar [-h | --help]

  -v...  Be more verbose.  The option letter can be repeated, increasing
         the verbosity level.

"[-v ...]" would imply that only "-v -v -v" is allowed, instead of
"-vvv".

I think this is a matter of achieving an accurate and unambiguous
synopsis grammar.

Regards,
Branden

--6zbxnlw5nmef44xg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTGjBAACgkQ0Z6cfXEm
bc5Lbw/9EWvuu9mapaHleHtLgEvhCkr8u9VoA3yHA1mY5Xk4upJKjfwgXHrYxQtc
AZuOOSl9sUUEWOwHEuG08eguK2gpszxlm4mVrSvvp+TsKQF1NxHbVYVVSs0kHIUA
bNyAs9nDmMPH3GKrTNj/DdPw/nj/snzOg8EUnJkzDUshpUKnE1x/NveUu1CpVVbc
0zanhoi9RNtm19dXmGb5h9UIA1+B0fk9/4+07OGe1cX4mUYyOJRvKpr3XNOxuB7I
IE3ro79XB0evdi26DGdMoKbqFYbNRW3Qq5ytfxm8tymXpHTGQU/vuMrVsUuatDxD
88TXxniRDnjbhvSMx7h+oPC7Lt/pETxOLucY3DXfn7UGE+Ruaz1CLGbJ6fwyYD3t
k0eJNT4y5XtXaGCknYRzDaqGo9IvhjgeliNaOV0q+zTFtv43j3sdKDmGZvV+WLz6
VSPUm1YLD2EBn5v6yui+iTA1LlTaOa66WYIsSwQUu60LS3gvRrKWizQ86uJdTUdV
qAIZHcA+kM9pdbF+Zl1l0h4hEHHb9bZOW4FHHCEtmgOw2Wc/Thk5FHM8evGM/fyr
+REiSYeTy4oKhFnFQsvvGzuoK3D8jI93wVPi84uN9P0gPVjdlyoNcpMVjBtdpUR4
1RjdMM6f16T+AX28dCwOadJ0YCjgV2ao/8xeplp8k1YSQICb6L4=
=E/t9
-----END PGP SIGNATURE-----

--6zbxnlw5nmef44xg--
