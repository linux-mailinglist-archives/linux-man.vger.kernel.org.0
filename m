Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF2377D739A
	for <lists+linux-man@lfdr.de>; Wed, 25 Oct 2023 20:53:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229557AbjJYSxr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Oct 2023 14:53:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229522AbjJYSxr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Oct 2023 14:53:47 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C968FDC
        for <linux-man@vger.kernel.org>; Wed, 25 Oct 2023 11:53:44 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-3b2f28caab9so16548b6e.1
        for <linux-man@vger.kernel.org>; Wed, 25 Oct 2023 11:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698260023; x=1698864823; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6AhRA+gPTQlnCCZkWwomGBXm/WJ98rrf60xAFWBVb78=;
        b=kpvEkxVFMwTt/LZSnyqAYPV3miIkyKUvMNS05uQoR067uXm6/9SjjcfZ9BjM23F9ot
         gppaXitH02gRi4OQWOykZukhDqa/iRcKNBx0tN/SpjpqVE1G/i2VNZmvdZf7VTvJPt5K
         Ur8K7Yu24Sz2Cz30g8jGlBQDqSIjIIaE1crKOOLsurTBjhypWmpSbhid6oNYJ9HaA/e7
         TBZzY8CtFWPjFyDIsF0S0QyUzB7bKaSqJX+KElRPzZQyPMLnFT7F+ZsRthPHKKGFajf9
         OpUbkXGXhdZfz2wLD2S1RmKdvE1yECAwiNw/wW2qCKtTS+m6GNdOroc43Tn9vptu4xLN
         GVqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698260023; x=1698864823;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6AhRA+gPTQlnCCZkWwomGBXm/WJ98rrf60xAFWBVb78=;
        b=R9jbhcKeuPGZbARMI7RAiNc9dYT4e/OW8BnLuEbqGw/cZoHaKztngEcnuEU6IHZd8X
         UZj1M7VLKTDVc5iYyl0poivAh4573Nii0IS9eTneIWRSKSg2EECPXyFlSDGKAETkvpkc
         5wjkdLeB2sKW5++e0Md1MkGfg6Sp9JnZ3b27J8I5Ru7j2BS8BAmAvGEwICqoYJBzsbhy
         jbeP7WjENxpYKtRe3CH4YxRRguiXOF/pg5cl/cjVu8fXQFWWorOkOWMVrGfPmpubhT1e
         A1Ujz/N7bOypwj6D4CcQToelDHu+RukmO1JFUIEMeCSGK/UX6sfWWMSbrrzstf43LqJU
         7dLA==
X-Gm-Message-State: AOJu0YwsmkArVVWGzhcqRpxUICYLrwCs4zQ4CNAKiXd7tFjTycBxtxgD
        XOfke40xYJXOo8dA+5wh7d6RMLCncrc=
X-Google-Smtp-Source: AGHT+IFODgwT4EJq+PODHb/bC7XtG0PQjMCFYLTvu5WyJg1yiiskt8VFbcDCrzAjy6nWROt4I8BkBA==
X-Received: by 2002:a05:6808:b33:b0:3ae:a6e:6ccc with SMTP id t19-20020a0568080b3300b003ae0a6e6cccmr16535174oij.49.1698260023684;
        Wed, 25 Oct 2023 11:53:43 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id z17-20020a9d65d1000000b006b95f0db2besm2418949oth.41.2023.10.25.11.53.42
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 11:53:42 -0700 (PDT)
Date:   Wed, 25 Oct 2023 13:53:41 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Subject: [PATCH v4 0/2] migrate man page cross references to MR macro
Message-ID: <20231025185341.mqvn7qlm3iby4zgm@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="s2via5bp67ycicvr"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--s2via5bp67ycicvr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Changes since v3:
* Resync the preparatory patch (1/2) with recent adoption of `TQ` macro
  in more places, reducing the number of manual preparations needed.
* Stop trying to migrate tzfile(5), tzselect(8), zdump(8), zic(8), and
  time2posix(3); and bpf-helpers(7), which are externally maintained.
  Thanks to Brian Inglis.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

--s2via5bp67ycicvr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmU5ZC4ACgkQ0Z6cfXEm
bc4c+w//ewqHeszDFOVCGD8Oe7sA4B48jCD1gYRmp1raJyEt4P4uxISM7CoMXdfD
xw7jl/KnLx95UA7IqClogRdb1cj+BQDGWtpXSqXQTGiZcXeJ2r5tSTFtwUojcp4b
VWm3eHCgLIRngsYF3sOaIstE5oCvAUiGCR6eQrtsNKawQtIwDPv7GwOQLoQTGwa3
qgdf9d7KrMBzl4tAEoJnAxiBZpW5iOguuzgKYTAGOOCCsD5+/usQwRN9U/hBmrt3
IHZPJaiMhyXznpDY68d29977irsL+OVhdrB4RI6/AbD6GoaOpS1VKWqGjUQGHSkf
ArUZ0uffRwIBC2N4FVxTrWCclcY5cCiytmca3KbwMaeMtkDvlO/Abx27SnxptOFX
T0YdhK1K0wxZW7QVmqs3xO78VguLDhyNAkixpJZtCsHQFK/Vqu94PkdPlumD7uek
GefYyWqfBPRM/gTkRmrQas6kI+5rydKWpFBsRYc7nhY2QfrXLE9oCHThGd1ss92J
uHKaJNMKxOqe8jPeavnq0eJ5w3+tfdJK6oPlb1BmBRkX0hCIqJF92SHFYIT79sVe
YkHv+qP+0hjOMP8KPAzpKWrLDSRDHt9GL/phLR93JVirBl78iAaXRRpESBAz9Epo
MxVPdlMEna+Xpb6UAYdKMHt0Lsya8ocWXQS2BSs0rjvENObDFpg=
=FvHi
-----END PGP SIGNATURE-----

--s2via5bp67ycicvr--
