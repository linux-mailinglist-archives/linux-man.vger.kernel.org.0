Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6C9557D94D
	for <lists+linux-man@lfdr.de>; Fri, 22 Jul 2022 06:09:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234276AbiGVEJR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jul 2022 00:09:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234360AbiGVEJF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jul 2022 00:09:05 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D73D09A5F8
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 21:07:19 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id w188so316201oiw.8
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 21:07:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=mXu1uJp9chgitTtC5e4xj4OGioEiqmLb0U2kuizR7BM=;
        b=m3RKCPtxOqUD10j3u+FM7RZ+6gZSXal34Ebh8vDyIueRfgdBoeG7EIH2UVL7ObqWb7
         fbPbtt3dbrtW6dJsRjCuN/Jbg1e+Z8Pa4G68oo8EeojpOE2WbrzqcTd9ag/tAlq++D4h
         1wOS+lIkOq3kdv5N+vjYBgzd3Q1UEhLIM01jAxoMf7m9qkwb6DAGye8qbSpKzcFg2INS
         02yE5Xdje9zEwhMkpoOP8w638v3W/0YmA2yHdmYTi+MHjBLtOf/IGpVrMRyQZTrb+r+x
         XzAZMmvhT2E1Zozh1tqk/zOciOLfsFBoc/f22P7EBpjcNX+bXBWSNlN17f6DFYpiwdzU
         ww3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=mXu1uJp9chgitTtC5e4xj4OGioEiqmLb0U2kuizR7BM=;
        b=KlVqkxQErmzZLRBjiTIdUl/Zd1LPJ4yn5ek136knyBhroLE67HSnUetMzvHXp/ACk0
         uVxIcjZKG09GPlJS/akRX20hRwmrwOO55kVKt83sbe1e4FqrY6VS5NJ5JaG4HhON8MdQ
         UIuDzFTF1tj+Ua0n7ucq3+K72dTdW9Lr+/AiFfM0y/O/BknXpFLlkafLzNCoLzEqh4V/
         M+clZsOe5Iq0Wd3kyzfEMsNt6aC5uuA2kkYXtuUrdarhKW6zf5DeDVqqDeb5szIdljuY
         6MyfpC4+QcpQwWel0k4FcjP0JB64jxiY0Q7lPtD3iJXFlobOWn9bL2CAAi4ySrPGJjgn
         Hf9w==
X-Gm-Message-State: AJIora/XH5iYYyCeUxXlrxR647ghFJEATQByz3ATHLlKyurZ63rAsoN7
        PPz9ROPYfoOIueEFGMM4p+gm5XZPhYLCGQ==
X-Google-Smtp-Source: AGRyM1uDjZNQJGKcCdhWyBBmh4TfC3TiJ52Rp4QutKP/KNF69xMUfsDUF3ijZ1YDgy3wlWtfJRm66Q==
X-Received: by 2002:a05:6808:995:b0:33a:8878:dd63 with SMTP id a21-20020a056808099500b0033a8878dd63mr607593oic.100.1658462828367;
        Thu, 21 Jul 2022 21:07:08 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id i22-20020a056870221600b000f325409614sm1701922oaf.13.2022.07.21.21.07.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 21:07:07 -0700 (PDT)
Date:   Thu, 21 Jul 2022 23:07:05 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
Subject: Re: All caps .TH page title
Message-ID: <20220722040705.gkjwnsttiusdvg77@illithid>
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <Ytnt4dPmkrPmL1Sh@riva.ucam.org>
 <20220722013435.mkzzfscdgtechzgx@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="lh3kywgqetk4se7w"
Content-Disposition: inline
In-Reply-To: <20220722013435.mkzzfscdgtechzgx@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--lh3kywgqetk4se7w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2022-07-21T20:34:39-0500, G. Branden Robinson wrote:
> Ah, thanks, Colin.  A quick consultation of ncurses man pages reveals
> that mandb(8)'s idea of the manual section comes from its place in the
> directory hierarchy, not from parsing the arguments to the `TH` call.
> My error!

Sorry, no, I was still wrong.  I guess it comes from the file extension
on the man page.

John Gardner's not the only person having trouble today.

90 dB of fans and a dehumidifier to dry out a flooded floor does not
make for the most productive thinking environment.

Regards,
Branden

--lh3kywgqetk4se7w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmLaImAACgkQ0Z6cfXEm
bc7GnhAAoW8CDRvkJZVwhfTeWHZBOp1La3VLThGushg8IxyrOklFKqi7In42zWXR
iyT7gcgWNkN3GZnNJn7RsdRnCOFVdsNc6r+HYYx2ifLKTJdR2REDQqe/j3cHhlvh
O8g84YJlqgXmjejDDyu5flbUuPrvYW5MkjzDZKGj4BoTQT8c3CSynYnBPZN+v4Yu
D24bps5Bow0QKUpRWb/dMBLFKswkglfnANZoGlskt8LbgC9ZuQRRIASSqGiuKyW8
flQMIUeqLTFAuBsTZDbrMpdeUVPstrHS4GOHsYwBG/rX5WBSF7b9O4qucPgssvPm
xqimkgRDVjRZJaaaLAm2Dr0EGXkdZwAtm+/JyOao0wmhwKWKa6fCEBRMuA7MmBSV
6PNAAQIAhQnEA6hA2Wc344AVJK2IFqK8VEeChe3C2uIEmncsP5uEKAJhefIBFRFX
0/UCrvwdwy5TnXOY+yFRZBpZre7Bv+nrjHGKPSrR0CpX+k5SN1NXR5ZZ8E6Q/Raj
3+juzjAAd6Vp9hDlPthu0Wdsq9jm3GQCJtO9H9ERD/06NzjCQ6mMHvIifypcNzzI
lZq1rdw8a92sQ6oOHLQ/Ru4wefulQIxMJ3tc7rtzfApA5CtyoS1XFU2QoqmhFRB6
nI/epjXyCEmERDsZDQZP3WMZX3K2lhcZw2sZJoz+NKZy9q0THqk=
=2dQ5
-----END PGP SIGNATURE-----

--lh3kywgqetk4se7w--
