Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 236D276A1CA
	for <lists+linux-man@lfdr.de>; Mon, 31 Jul 2023 22:19:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229742AbjGaUTi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 16:19:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229452AbjGaUTh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 16:19:37 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CD18133
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 13:19:36 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-6bcac140aaaso599774a34.2
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 13:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690834776; x=1691439576;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0tCx0T93mHg4WItvOyFwqEc83H1sSxG6sTlDDERIxQQ=;
        b=sDjJpGhsLKSxbETmioGT9XU7WxL/lT7eNUsaNK9YS4BNLsellQkwg8cC4qMyrB88Av
         PqzU4YUGMLjndxeDUEsUXWn94OjgrqlFn58YrHkwCf21t0sAfnPAaRzP/svIr/fPxOGT
         DSBeARkIk1lflGXPsYBjr47+pghYNwM4KF/BjW5Cd/K72dSmvyLoOoiilX8mLzU7CCjN
         TPKwioiDvZVT/rtDC+t0Vv2J6IyT0VFGIq+fgGGGNPmGMCIepsv7oMLpQFX3LxE9pcb2
         jLqB9mwc/Ba/pgR5OwTjKGMwud9Gnzew6bVTiKHl6x6z/lY3gJtPVnCc4A5HzVtWxkdJ
         Hslw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690834776; x=1691439576;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0tCx0T93mHg4WItvOyFwqEc83H1sSxG6sTlDDERIxQQ=;
        b=K/FNXVftCOFaHE1nGMerJiZxHJgd+0jwivZbYCpgFk3qRjsFu9NgaMqalm1ri0xt3m
         wnjChu4HHBjoctnTkBkAZLclyDvS338dxHQ70f1NwZ9OEZfsmGOD5gw3dobh8zVK0bf/
         /sGeQWLs8V8VLu3yaQxeH5cwINT/Uiy1Wf+qzCsYofw0/2wj5YPpAg7V0/c55WB5mI+p
         4ai6+evYEE6NWViEV6596M27mR/ECYhALwO/maCg4y8pwr3CH58IPQy+tGduB/w6ECML
         TOuUb2ZAfCKAG9hqqyUoxL8F/KlwI5ADIInq4IvkgFcYgZt8Isq6DFpAJeaaeuu187G9
         9+zQ==
X-Gm-Message-State: ABy/qLbo9fU7OLUQEvRxCDa6XzEF48ye5Whk3Al9DkmVjWh1eNl6Cwu4
        wwuyS5z+aS2VV8ysK7YH3X9ec6CZGDQ=
X-Google-Smtp-Source: APBJJlHg/B6TbGPThvQzaCpLjHiTHPjOGwXTV1YkG2fg5Refbhtaq3iz3VyXWhXW+Lo3Nc9bluUjuA==
X-Received: by 2002:a9d:5e90:0:b0:6b5:920c:649c with SMTP id f16-20020a9d5e90000000b006b5920c649cmr10501547otl.29.1690834775832;
        Mon, 31 Jul 2023 13:19:35 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id a15-20020a9d74cf000000b006b92509e76esm4359765otl.32.2023.07.31.13.19.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 13:19:35 -0700 (PDT)
Date:   Mon, 31 Jul 2023 15:19:34 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v3] man*/: srcfix
Message-ID: <20230731201934.gjskg73p2k33q52d@illithid>
References: <20230731174836.5e3fxxe6csgitm4s@illithid>
 <45228b33-b6c5-a7c8-e1d3-00cdb18829f7@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2nkgfcborryq7ipn"
Content-Disposition: inline
In-Reply-To: <45228b33-b6c5-a7c8-e1d3-00cdb18829f7@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2nkgfcborryq7ipn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

At 2023-07-31T21:56:27+0200, Alejandro Colomar wrote:
> Is this that you'll do it in MR sed, or that you forgot to fix it?  :D

Yes, that's what I meant to indicate by the v3 annotation at the end of
the mail.

>> v3: Resubmitted; no change.  A revision to "MR.sed" handles this
>> case.

Regards,
Branden

--2nkgfcborryq7ipn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTIF04ACgkQ0Z6cfXEm
bc5JAA//ZRhCv026qgOIYW38TJg/0P5OpTnG2Ls0ZiVcMBPSczyq1YDWAalUmyTR
jUltgcLRkSzaDVSUhrdKHCPwVqFvXoaXIKmgzh8gMEy9J1fNbEvUaKR+SBhujTz2
V4WTk19h658mFmBh4rhCCL+X7tuAYGza/Bjsj6y84ydtTKpDJBJ4xUVeGEQ/8fTK
OEVsvampTPhGFNpRIzeAhswkxvbbvzuRrhaAZ97HdyrsLidwMH9TRtm2BDsLv6gL
NJGemmwd9Cs/NVk+K2A1Wp4UMCQVjDDxhm/H8XEdCUDq6B92Y6LJulcZa7TcfUHp
lTOYrF+dcGPg41CLucO+Fgl0HQTA1DnalmhI04NwMbdoi9/h/tE/a9fiCZHhGsox
g9IJAA3oRq2J2qTTc1DCVkYxuwALIzQKsUDP0qOqAzR7z8PnshTwJNWaq5DHk8W8
WxdgejDF6Pnomp+oFCnqZcScMVGjhavYVWO16IvzM7MRSf+yWtx8IGKY+Pq7tNT0
M91Q6yWio/RbQOMCf2VzS0VTwpLHSUp0Qg5yqJ5Miouk1ShWQFrlJ4DjxIpUvZmf
gUOwVZ5xsbui0kwo8MkHfGku/cxhXWIguvRnz1OTU6zQE+aX731+f91OEUwFF4QW
yv8KcpnQzs+0dl8Ut+k9jtuu/o3jCSRburKaZ92pQXZI1n1nPlg=
=LRCm
-----END PGP SIGNATURE-----

--2nkgfcborryq7ipn--
