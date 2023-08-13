Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1730E77A777
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 17:28:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231193AbjHMP2c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 11:28:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229706AbjHMP2b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 11:28:31 -0400
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E13AE19AB
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 08:28:09 -0700 (PDT)
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-6bca66e6c44so3257456a34.0
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 08:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691940488; x=1692545288;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yLmgijn5h8/32yRb5zPv3I0feaNC0vfYRKxNzynZ9tw=;
        b=IQ4HhJMXWDRJ8/yFBog44hmRZF1QJDItEe4J7RBJ+FfQBmvCSASh8xuApZd4WAhV0I
         RJ3sfTHYphUn7pHPv+4l1m9GG2mOYx8UujKGZV9xMlyUZgx5G91FnzAS2xhWo1VTZwIN
         GeM0BFxBPwO9wwUYW+aj4rLgQ8x5PJ87g8LEhikaHnHnMzLlGwCIM8rHdTbz3veK/9T5
         IhGrecilaot4oseyxHtic3VFebOR2SKlAbmqvlHuDtv2qUeOyLHMgmzZGlEK8zPmQUyQ
         Eh7gve7BxX6iyWnLXjsmfj8AYp7SxUlEqL4ChTHlwxgM9Z2/GqEM9DRNgHuLGcpUTLyc
         d5TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691940488; x=1692545288;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yLmgijn5h8/32yRb5zPv3I0feaNC0vfYRKxNzynZ9tw=;
        b=Zyty2tVocEnKjf/bdgo/T4eWXQVLHyiGrhtv0FRqnv4M3UXwBTuV4BRCCv88J7SQ59
         b8d5YqlqReCqvLQYTCGQjmc7FdLA16svJm9dEDOtq39BVP1+9PpUR7fE+l/gUAzyZpmA
         vGaecq+f59xWX2OkA3cFVSIz8aZlLvPB7V+q+eR1xG7E11k26iKGZLRbjItaLCMHS9lg
         suYNvtJ6CeqTkJnO4/0uUoDtzPTksgvJmRe0n+fiIqc5lhqI7D0AED+UndjZRBxN92Q9
         cFhvX/tAGbjV8tx4OFj5wrSdJYOr4SQGIVq9+6ULpsZ+3fSzfdKSy2OWQnhoHHnlxbB9
         5I4g==
X-Gm-Message-State: AOJu0Yyjbt1hpTf/EZndsYQikOwaxMv5nQR0OkZIe9XX4jy/CWfvGVuw
        ozkvXwpniLpNXVtTKBHh+5pGQzxXW+g=
X-Google-Smtp-Source: AGHT+IHpfQ1XO723OcddmcfA8bn9F2wqxFvF6fvb7z0mrjsfUtWsPpXGQFIdC5zk6Rr66RDg7aOclQ==
X-Received: by 2002:a9d:6ad7:0:b0:6b9:58dc:a2d9 with SMTP id m23-20020a9d6ad7000000b006b958dca2d9mr7280908otq.28.1691940488601;
        Sun, 13 Aug 2023 08:28:08 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id e2-20020a05683013c200b006b90b5626desm3455180otq.62.2023.08.13.08.28.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Aug 2023 08:28:08 -0700 (PDT)
Date:   Sun, 13 Aug 2023 10:28:06 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: .sp 1 in strerror.3 (and probably more pages)
Message-ID: <20230813152806.sgbftjs6nqgjjcoy@illithid>
References: <d499316f-1d85-6a99-456e-191004059bc0@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="cxcssrapxm3vekrg"
Content-Disposition: inline
In-Reply-To: <d499316f-1d85-6a99-456e-191004059bc0@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--cxcssrapxm3vekrg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-08-13T17:19:59+0200, Alejandro Colomar wrote:
> While trying to apply a patch that touches some table, I found an '.sp
> 1' after a table.
>=20
> I tried removing it to see what it does, but it seems nothing changed.
>=20
> However, in the PDF version, there's some change (using .sp 1 produces
> a larger space before the next section heading).
>=20
> Should we keep that thing, should we replace it by something else, or
> should we remove it?

I would take it out.  If you need vertical space after a table, use a
paragraphing macro.

The reason for the difference is this.

groff_man(7):

   Horizontal and vertical spacing
[...]
     Several macros insert vertical space: .SH, .SS, .TP, .P (and its
     synonyms), .IP, and the deprecated .HP.  The default inter=E2=80=90sec=
tion
     and inter=E2=80=90paragraph spacing is is 1v for terminal devices and =
0.4v
     for typesetting devices.  (The deprecated macro .PD can change this
     vertical spacing, but its use is discouraged.)  Between .EX and .EE
     calls, the inter=E2=80=90paragraph spacing is 1v regardless of output
     device.

Does this help?

Regards,
Branden

--cxcssrapxm3vekrg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTY9n4ACgkQ0Z6cfXEm
bc7NsA//cFBpAPoKHJ3YuZLvqcLoxlrsHPOITJQ1kOozpe4EE7ShQ4bP5MHTKDme
MrgOM/uQ7GVVfPS9sFTKb6b2CbTIhLV7EhIZDpJbEnkcYZxOk7bhQAL8aUidP6FF
BF5Mole8cek1Vb3H6ohcmzSWJJLn7GRMgGKrFLfuezGISD+0/QHYBNWSaMNO/ejd
hFlHCHyJpNYLui7ep2b/AN77RFy1LO7JPn2Jq98qwSZ+WDD549iZrxCZgLN063eh
kIOcVr49NfuynVn2YK5kzq4JttOB+4xH2SPhWzsYd9s5t5BCZW8qWr9o+iT3KQ/Q
nc0T94+tZlhbbeYCiLDpH46DuznKcD8R+jLaTEFnXKOWnuNHelOfJvlOwfEWLeZ2
8es8bCz6VL3zu6+JXKgmURPkUUScGYVAC3hS4SW+ZaMP+9YGx658Oyzmo0UAfiQf
2eS4HLQ3aEQWPfKQj21YUI79X0dEeczMjsjPdsP/LMnXB1Jc+YTY68u5oufKEgKL
H6zzmhEas9qaSDknlEm7msLD1yDWnDr9Zaiis5mfxHhQMg3xO34RySMwr0j71FCI
J0+2T+6ldXOofWxRasVgIj5OsLFGpsHoYyYmGAFMUVTr6lJJ0Dkkv79z/qt2uosn
sqJKaXuHwLrw/KSCkx/H6o4UXemm7eU5NhGndImunA1xYoqeHlE=
=NNCG
-----END PGP SIGNATURE-----

--cxcssrapxm3vekrg--
