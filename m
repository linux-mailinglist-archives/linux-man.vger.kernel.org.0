Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B05B3660D6E
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 10:54:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231934AbjAGJy1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 04:54:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231960AbjAGJyE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 04:54:04 -0500
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBF967D1E4
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 01:54:03 -0800 (PST)
Received: by mail-ot1-x32b.google.com with SMTP id r2-20020a9d7cc2000000b006718a7f7fbaso2299676otn.2
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 01:54:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VN0l+97RMg1YV2dO5JMRg0hysODDuzrQz563fUrpxq0=;
        b=oiDkLml4rM6diJCFCh+qyEWEdKL7K4SxWb/7pZpXMfKBKhW2fKKS4MOywg++VTg1kb
         8jI50oD5X0x0xpeSW9UgKocfyna/rmSDuMtubQKDKs3PEDlMgt0T4sqjaV+q9+kMUmZ9
         P2wsRHUZyrUhnlQF9W1CkS8+PYF659TK29bAjgk4GuJrEzgVOg88ijE1qNgbpcXX9HL/
         QtB4AZEnSiJxjReY/QDfFb22gBJSAoUxqlkKWkXXLqQ480F527t1kVx2dww9pqqc9BNN
         wONpYzQOpd5eQceucnz2Z6nz4TJhL8LBYrAITa0ISTVqAQAuXgoe8t8gXuUvafexobWg
         vJgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VN0l+97RMg1YV2dO5JMRg0hysODDuzrQz563fUrpxq0=;
        b=MI44INjx/kJB9C/ad8TxzkutK3/143DEhsDqDxhjRAsf1H8+K0GSVr9d1K1/r0iJR9
         yhwKQBUZcrCfM3Rh9eQS+U/LqHBB1b97N97JpSqEZqInF165E/c+QA7XEN7m+IpxBJWe
         7Hnv2nnJQuQOllTxWhgl9eHjbg8AC+vaFr+9HMhFEgB/VYUjcct81LHLMinl+x4l9lN4
         EFCQRXrK6wm9GjlQh0sAevl1KrPouAJdTIGKeGZO8IUNth14mBg8lDgTvZQdCCcctsND
         rrAbRiL8Zfj5ORhcN38GIC3PxwV2sFqWEUTVzAnD6NwWWQnGXh6JRIEvLuyjyFW/Bok9
         ZdCA==
X-Gm-Message-State: AFqh2konKiOnlyIIxti3dIFWjTeUtLYO30F6OCA4p8eALHgaDrPbh0DC
        LrXfiHmnwurVdv+wuk0hL3LEWx6YA/0=
X-Google-Smtp-Source: AMrXdXtHH0+oIUp1eHLpZ+jQPUrV/8wJmtIgHHFPJtkISbFfSJFYzQybtbt3FevyCkc+0pcLBFxdbw==
X-Received: by 2002:a9d:7408:0:b0:676:1802:661f with SMTP id n8-20020a9d7408000000b006761802661fmr26864452otk.25.1673085243143;
        Sat, 07 Jan 2023 01:54:03 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id r7-20020a056830418700b006706e4f6863sm1628457otu.75.2023.01.07.01.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 01:54:02 -0800 (PST)
Date:   Sat, 7 Jan 2023 03:54:01 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 00/10] ldconfig.8, libc.7, intro.3 revisions
Message-ID: <20230107095401.7nn77xl5twx5iho3@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="a5dsgty2vww2vwgn"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--a5dsgty2vww2vwgn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

v4:

* Drop segments already merged upstream.
* ldconfig.8: Resequence segment excising documentation of libc{4,5}
  support to first per request.  Delete the material instead of
  commenting it out.
* Relocate segment applying *roff hyphenation character to man page
  cross-reference to end of sequence per request.

v3:

* Segregate style changes into srcfix, ffix, wfix commits.
* Use SY/YS groff man(7) extensions to set ldconfig(8) synopsis.

v2:

* No longer migrates `PP` macros to `P`.
* No longer migrates ASCII "arrow" `->` to troff special character.
* Changes to each page split into markup, style, and content changes.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

--a5dsgty2vww2vwgn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO5QTEACgkQ0Z6cfXEm
bc5Wfg//QS42ZTf8POMXvJJdJRs55G3HTWEj1kunR7EJgtzCXK6X0wnc1h6hmSFn
jkkFFsKq+PsDIB2YLdg4HnBwru+6ZWITFjiRJypW6rdYyLGSH+Nlg4bSJvLRrvfp
E9ElEZeOcxq46OrwlW172pHpptUSHMMJ2iU8G7R7dPoG7IFx+meIf215U6N29AfX
6Bd7y/Ho0MqDxIN32TC5IdgdDmhFQbt5+hmPQUitiwL+rbW/8YOYGePYD3SXUpN7
K7GrAoRMppGrKHiQmk2hXrVzi3pETmf8t38Bw3ONqFrDvMb1g41a9m7hHauw9y5h
lMGImk/rGAFlWWsRq3I06+9Boqe143jQQSUWJ5RKhVGNXN39r8izk0m3hFVDZg+N
ujGI+1/o2uhLvzd51Mg0UKQxvjuVJeyKoL6uFmGALK7FWY+SMOfwfF+6WwKIZaS8
yywO4qOSzXqRn0/MNsKBfZWovFQx9qmpbwHBRDkwNGyksksF+8xTZr2GgGGtS2Ph
BIYuw+bDR0S3dvavZjyixvg9JOZ7mIZFc1ZRV4YRwH+h8GVDVTAxfldCyqeW6XSR
EL6EsIaR0v71W4/MPAS8w+13YB0khWyv5eDlc+rXGQa1okSLWFmlcZIdECRbqwWH
JUBmrtoiMGc4L0CZYg4A2Qvr8VYz7Vu4GTk/Fs/Ra05UpvGtJ2o=
=+hs0
-----END PGP SIGNATURE-----

--a5dsgty2vww2vwgn--
