Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0644866AF7E
	for <lists+linux-man@lfdr.de>; Sun, 15 Jan 2023 06:43:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230358AbjAOFnT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Jan 2023 00:43:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230447AbjAOFnR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Jan 2023 00:43:17 -0500
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF4B69ECB
        for <linux-man@vger.kernel.org>; Sat, 14 Jan 2023 21:43:16 -0800 (PST)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-1433ef3b61fso26317693fac.10
        for <linux-man@vger.kernel.org>; Sat, 14 Jan 2023 21:43:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X96N/r2CGCI7LKq0DX4kaMxcS4F4oZYeQZYNLXrC2/o=;
        b=FT9ibDPG4uclWV5p1U6H7Wg7qiLDDfrZ+Wqk2LWEdLAMzilvbMHEseilhQom+hJk7a
         0BRgP/2uZoE46J5V2Iw/4IPpUG63EjsInqla4WPCxmAai9UM5h+mgOgN5a5/11epo+zH
         xCrscChsXj3sIWKlj+Pb0L9TFTbkC+sn3d6FfXAK+1Ly67ZaDQEV9pvVtmaPCYjPnGWk
         go1aAlvMGzca8faIFi0cIRFP2yL7IwYa9jQXng4w660BP7pUVQwkXdQRpQ7i0DW7KXIq
         E+xxUuaquWA25pBIvTFL7gRi9pLxJo9OdtWrpLn4yqK3Db3ZAYEhM+hQU/l3C+9kTXA7
         eJkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X96N/r2CGCI7LKq0DX4kaMxcS4F4oZYeQZYNLXrC2/o=;
        b=pM9JEArC+HpsEqU2t7enSR4JjnBdUN1cCdNNs/9lkRV32hlrxJ89vGZ6IRm0PRyOtr
         W6B+TowtKbJ7ofUxWgio86gi9yqQ8p3W/LtfwdOnSUv37fSJir7CbYMpWQRy9ggJlKtM
         UU417ieStt2XeP1GH7rtkenQbX7BTsq73MzIEaY8ACjc+TDX2CiNkQwAAhDxDxBmpz2F
         rn2bq+QiemCR+Azg90GNofEs6FpuWhSUo/73OX1z5dkarkKF6GAOeHH9+rokH+yHoJLv
         n8Yjo/DRVn9ba8EORw/Hr480ygrzKi8+VmIOJln3OOZ9Plko4xnvycJ9dMPt0II7AQVC
         UJxQ==
X-Gm-Message-State: AFqh2ko6qRC5KGRRBs5UZb6qBVoJ4J6lKhlTRPhXCD+nxINv8DaJa3tM
        UpZjEctU167d65QJlkjEgizW6geXeJI=
X-Google-Smtp-Source: AMrXdXt7tBTJla5VUZfk7xH5Jsc1ihTDq9leXwwy0KQKVidqqmTTwsZnK6+6q6btZBp8kQOA5QfHEA==
X-Received: by 2002:a05:6871:4048:b0:15b:9e04:4f12 with SMTP id ky8-20020a056871404800b0015b9e044f12mr11107817oab.45.1673761395347;
        Sat, 14 Jan 2023 21:43:15 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id h16-20020a056870539000b0014c8685f229sm12736600oan.10.2023.01.14.21.43.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Jan 2023 21:43:14 -0800 (PST)
Date:   Sat, 14 Jan 2023 23:43:13 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v5 0/6] ldconfig.8, libc.7, intro.3 revisions
Message-ID: <20230115054313.4l46uzuh3yyufstm@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="3rspaoxut6xmjko4"
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


--3rspaoxut6xmjko4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

v5:

* Drop segments already merged upstream.
* intro.3: Recast discussion of subsections again.  I am finding it
  challenging to present them without _any_ historical context; one
  reasonably wonders why section 3 even _has_ subsections.  So provide
  the context, documenting where they came from, and annotating in
  comments yet another aspect of the USG/BSD split.  Push the discussion
  of libc as not a model for good library design later, after presenting
  Linux man-pages's subsections.

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
* No longer migrates ASCII "arrow" `->` to troff special
* character.
* Changes to each page split into markup, style, and content
* changes.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

--3rspaoxut6xmjko4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPDkmQACgkQ0Z6cfXEm
bc73RhAAq0uPFlwwcY9TJUSFPgK5ZJ6lR1dEQb8rb/6EdU32rnXJY55tTJkKyPmF
UrX+5wULc7SCI2ZQbpmcKmGWsmAwXUWnX+0TZTMht3EvZgNjrlUnujvi+RqzlAZ5
yPtVV2eDzc5pF585+W9DJ5gP9ahLvQ8aXVBULkLUf5GbzCyvA7QyOxzGOEVq0dZm
5Dl07e0nMS5of9OX2JXOXkXnaQHM9cD1Yrud/f2fjq4xD72IBZLrhgo4JatWXiQr
JrM6aqIm16TruSO8wqyS2vUIcQWOmXPuk5xVsQdXMMcmbNE6utablZemxe6e7/qg
gu6qy0Kz8ZtudfveXC9GFQ0a+8mLduT3U1E49q2N8NwASJgRcWAWQACSoKkxMjSm
IcqBx81rrFUQbywOLlf9992D6SF0iTlUqn8oymY4Hd8iL+KEzvnVnQHRgVBwH2il
J7xnNMrmxipwKmMTsRya5hXJ7n+sOpcPOit68HKERI7vDld3EIB3OpRoZdoGXog5
8guwUSkuh3tKMCcihN3Cz+RumKhPK1HwcP28YUqdur9ngGWGTALlt5cmTIDfUlfj
Z7nVr8aNbcBLEwAySBB9Ap/hsM3sfYS0Wu63g7p+JWvDofMU++dTLyxyBO6SXfMU
sUFcZdsLpJg+X93jZgHs8uupGWNzvB+75161C3PNjlUtCGUEW/8=
=N7WC
-----END PGP SIGNATURE-----

--3rspaoxut6xmjko4--
