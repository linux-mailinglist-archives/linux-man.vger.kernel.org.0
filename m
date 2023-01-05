Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B29865F70D
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 23:52:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236444AbjAEWwM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 17:52:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236382AbjAEWv5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 17:51:57 -0500
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 200FF58828
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 14:51:44 -0800 (PST)
Received: by mail-oi1-x235.google.com with SMTP id r11so33261242oie.13
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 14:51:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DjUuIcFHEA9kYuLQqe3XeU+72/TBe0RySYGUJ5L5Vh0=;
        b=j/C/wnWYktOwjiWpwJJVXByO++3TPJo8bfDKDE4YRfNqzycEJX/itma2ZQ8Y9G2fIC
         iXIWD+xdUz3MaPV1fy0HK0RMDB5ADH21efyKPNdrDRZSERgqmea2+zm8d/+WY+KmXO3B
         PXrWSH2309tSU6WBepE1JXQNZLq9/Hsjhuo3pEffTtvf7Yj4ULrx9PQCG7HM1GghLfx7
         bftbt/SWtn/VvlO8Aog+IKVM9nifoEACfpf3fIBUo9hkte/VW25afD/8E8eMG31x2d4x
         CM+kbbNe7uxQBRhu+cM793xCOztEMbmAi7iYBcfNtFEK8d4hKIJGVNYGz1WqurKIAesF
         DXoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DjUuIcFHEA9kYuLQqe3XeU+72/TBe0RySYGUJ5L5Vh0=;
        b=PFSRo47wWgEjdQIT5r/aZBQwwKM3f4/yUgZIsYz1y1cfQOUvR1dFcBnrm5xRm0rCOL
         T5YzdakcE/vnl9tN57R4+FriwevEpOn7WZ35an9QuGi3fhSWQCUtJ3X1q3zjOzgrwiBn
         CNfRFIYO5WIG1OW/u0Uq+qJwZTgGzI6xOiilh4vrdJ7mM/OK1zcTFjhIw4O7mJ+ElNDq
         4c/nzFFPQW24DLh68SHGv969Kbwx1bmss5gz/E+G5+yI3pSdjVzTYYNnmJR6GRfRkHRx
         kmIjODKJIVb9dDJAFoWlSmbTSUlo8HLBgfOP2cJEstKM6IqeX9OYz9BixLlmMdDf56BO
         w1Tg==
X-Gm-Message-State: AFqh2kr9fuQrQaGgif9LcqWL7bjxtuaByarc52kUfRkzMpSICabfuVRh
        HCPiHRRJlopFyqhkJuH4Los=
X-Google-Smtp-Source: AMrXdXvsBlkYYX0fSA7SKhJ+nstx/1FjoC3FEY4u8nNv6yOT/W+G5lxLWZiqNknWdbT/rfsk6EuzKw==
X-Received: by 2002:a54:400a:0:b0:35c:51c3:8cb1 with SMTP id x10-20020a54400a000000b0035c51c38cb1mr23065402oie.13.1672959104269;
        Thu, 05 Jan 2023 14:51:44 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id g18-20020a9d6492000000b0066ec67bbc7asm17727158otl.7.2023.01.05.14.51.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 14:51:43 -0800 (PST)
Date:   Thu, 5 Jan 2023 16:51:42 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 00/13] ldconfig.8, libc.7, intro.3 revisions
Message-ID: <20230105225142.vzzqdz2njikw3izh@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="dhb5nhib4hdhvtsz"
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


--dhb5nhib4hdhvtsz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

v3:

* Segregate style changes into srcfix, ffix, wfix commits.
* Use SY/YS groff man(7) extensions to set ldconfig(8) synopsis.

v2:

* No longer migrates `PP` macros to `P`.
* No longer migrates ASCII "arrow" `->` to troff special character.
* Changes to each page split into markup, style, and content changes.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

--dhb5nhib4hdhvtsz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3VHYACgkQ0Z6cfXEm
bc54txAAj6NOTsptyzpYgrMerZigZBIwpV4eVCFawJb+TeYwkmU1mXo54CC46PnJ
jIHdbcA906kGelr+vGwc7F6ub7OFCDy6d8jU6m7KmS9u/iujg+YyIczK5Q3TzUtF
j0bBFfdMw0NLiS5KLDwYrBB7Z9hsaCapMga/3OPEqdtUNG63qdyfFnptQI0PXXcN
fhZ8GMKe+VsqMU76IgjDsPT7Vy0y+31asVVQ0gEziY1aO03D3z66XhXWJKd5fIov
AVj51Rfp8ncCnqG6zjhqVz1Ux31eatSE/lem0u/iZ6KVZpnyLwT13il7GlFcsUu1
hrWrewnUMsjlkuGt1bDiFEqscRdzxisDr93CeMi+j3WvFKrkX0gfOVjjtydrB029
r+WiILEHtli1oG8xZZ42sDdIgsXXSnhqsIJcb+x3Ci1tApwZvj7hGXbnFE17OE7G
ShIq+rnZncOyIlFAHVTPodHDCjqtwQC2MM5NEJziGdLDOsYGOSjE+avAivEih8+E
tt+SlCNQTd3Um0kXpFoocyYnHn5sZEeSnQbq/yJlDrDjsAye3AanYuMGfNFqIg0U
pq3jrQnqYQBCi5rM/Tws75yofQQL9hw0ZmJWpFIDeRD1GaHp9TPIgvBKQVI6bDF5
sDO8uRhJdCqvzJiUA98OEI/Z2ME5J6z0SfGZXXh4vRY9ctgFfZI=
=3ifl
-----END PGP SIGNATURE-----

--dhb5nhib4hdhvtsz--
