Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2FA265B349
	for <lists+linux-man@lfdr.de>; Mon,  2 Jan 2023 15:22:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230133AbjABOWg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Jan 2023 09:22:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230127AbjABOWf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Jan 2023 09:22:35 -0500
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BC06313
        for <linux-man@vger.kernel.org>; Mon,  2 Jan 2023 06:22:35 -0800 (PST)
Received: by mail-oi1-x232.google.com with SMTP id h185so2535111oif.5
        for <linux-man@vger.kernel.org>; Mon, 02 Jan 2023 06:22:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4CA4N0K8X7Hn6Kn0ZR6hPrSAFlHCjtum+9RkxjwQvg8=;
        b=P0lHWf32GeDbqezCjECauD7pVHg+9vDDxb52Ilx5AbpdeODokq0j8DFP8lsaR7pqCn
         koV86+Wmo9RjN+4wmf3SYtdC7Yq2f3m3sOtapFbEn5J0ydBNragS1gSkDSDdZhHtqzuV
         RyR6S8cho1sicN3825f+B2eZlPq/HPCHZQPXqIto1hbdzMQGhhwDOi3Db7h7dcO7p/XU
         lyodFs32CwVpg009GXQhbJazdRq9L0yhUWWl7Zc1aWHmbX7JBr/Op6Uxd5wbW+khTg9y
         Yejs6orbtxUPrMlNn0lD3Sk4K5vipB4sCuDrgB4gcsyf1Mn6v0EfuCWGiqJN4UoUeUC/
         nQDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4CA4N0K8X7Hn6Kn0ZR6hPrSAFlHCjtum+9RkxjwQvg8=;
        b=e+shK82TFFki/ytev9iEFUC/JbV9KT1+wEtCUE4bBzNvmQYgMPzEvfwQZJ8scLKskD
         MJM+GzZl9RIdcfP1BbpoKvl6U47LWutu8HTtYEt42Au987hDB692BN9wmYVWqwkeVgzm
         zo/Ian3AzkPakXEIVWK2N0AEXZQOhRoQV2FTBFSnsACPjOJSdajTaU9pU/ad6asnfyiC
         0gpTJ9j6eVkHNNlq42glYnpRsrsHUdVTqumdV2pYXdiIv9Ri6YOLmGeFVPDXZsMulEq+
         jvwcb9Xyc0lbtvG9tPPeGEVRMYBWZGvL/VsVy+E+Ld2RtF/4QS+LFaUhB/Xo/c/iavPr
         DUVA==
X-Gm-Message-State: AFqh2kquIgKlQ5B5/RoNAfZBXTNC81EYVPOXEoFHejCC5j9TgaAFiYmX
        fYhnIU6w6pzArGHOEnKLuni6f5vMUWGjsA==
X-Google-Smtp-Source: AMrXdXvOJUUmlr6ngGjBVW3X3HQ8++/v0NJAlRitgzgrkcX8upLVfWStcYZG9kDyE1/QFBD5sa8O5Q==
X-Received: by 2002:a05:6808:997:b0:360:3cfa:5a24 with SMTP id a23-20020a056808099700b003603cfa5a24mr17505264oic.18.1672669354403;
        Mon, 02 Jan 2023 06:22:34 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id q17-20020a05683022d100b0066e67925addsm13616829otc.26.2023.01.02.06.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 06:22:33 -0800 (PST)
Date:   Mon, 2 Jan 2023 08:22:32 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 0/4]: intro.3, ldconfig.8, libc.7
Message-ID: <20230102142232.aue2z4dnzlgqbhdj@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="kp2wtuieorxlxq2z"
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


--kp2wtuieorxlxq2z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

Here come some proposed changes.  After the first they get bulky.  As
you read through them I think the motivations for each will be clear.

Let me try a process with you that I just couldn't get to work with
Michael.

I tried pretty hard to itemize every change in the commit message.  If
there are any that you want to reject or would like to see broken into
separate patches, please just mark them accordingly.  I do not ask that
you attempt a partial commit.

Regards,
Branden

--kp2wtuieorxlxq2z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOy6J0ACgkQ0Z6cfXEm
bc4/Lg/8CTNxHYjbFPb4TvlAu+eL6FHDYc/S9K4t/mARE4vpDdKG11jxEBxYDsAP
4dn+ynFt1WkG2/6GKHAQawsT9QyxY4wOo9tPMpAwgJhAhnbtdMOE6dhPYRZNRpOp
inXhyBzawcTY/ocjHqgthilWYj+i+98PldzajfjS7dsuK6ZnQemIDBT+Q6QpWD+v
gUoe1A5HYZntMcpBn6Ocrvtl0O7nlSO3A/uG6LjANDcsY9nHqRu3U+aZB02A8jT1
3FHrz89R8xqHgSpbIpuu4K+YkYLnkkzliLO8kiUXyPCR7SvZq4zpHxVwpUhVAp7Y
Bk6LG3rh0ziazyugeNS8iU+CTV8Gs1GJ8MU1UYADQMmECqJgpzs2pp9pyU+P7eIL
cdQ1nT/iOx3BYcYIbaTLnGSdFsRy/QLZ9rfFjOus7SqC5U6LmkQnC207GByIWvk+
DImSVc5ErcaCLVEq8iu2Y8ole4RSwornCiTsJxG6M5hh28RGFZjPS4tyoU0EVY7G
OEAgfVLYdwxwEhZKh6zLolh0HAGjhRh2PO6yXFxCVOzl4ClGZa8RDBskfSb7Qux/
uRcR8K/tgcHVDJK3QyYrhOSRDOhxhCrQob6dZF9DXQB1CWK1MYMwNRaJ2nLqmbQ/
GRB4WOzRrEvxVsuFo1WSquB4QeV/8d8wkDdtyWFuD8bX7D/Dwm0=
=lbiZ
-----END PGP SIGNATURE-----

--kp2wtuieorxlxq2z--
