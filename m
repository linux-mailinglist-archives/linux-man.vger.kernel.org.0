Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE291503402
	for <lists+linux-man@lfdr.de>; Sat, 16 Apr 2022 07:49:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233189AbiDOXda (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 Apr 2022 19:33:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356556AbiDOXdY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 Apr 2022 19:33:24 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7437A4EF69
        for <linux-man@vger.kernel.org>; Fri, 15 Apr 2022 16:30:54 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id g18so12117654wrb.10
        for <linux-man@vger.kernel.org>; Fri, 15 Apr 2022 16:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WKZ1lD7amZQ43PEKfQN08kS4ubsRVEOTz/DeTkKkuvI=;
        b=Z/hh02Sj30Kety/xWV/iGxqfdMlkaRIJZwshgHp3Ly1uAk+rRviEdlifzZLK55FOrK
         9lfy+PF5tPZFKF1Cap4HFwVGyUQPi8m3HE4rMVRTj2MfjJqh8rOfkxO8hbza0sjUlaC/
         wUfCIAmddG8otuLLzuAMqH2Er03Edl/vNsBuqrXmPnHLhUc9pgpYlez9kc0hJ9ajS5Gy
         K/FuxK3WwRMwYXJ7I7RUbTUU/kTAUvctTAKLF0kGVfJfLzxNpDmQ2baIGKe2dOuZNq7m
         438tt0b5042XoqcLUQUzhuZgXgtvlZWWKh9pncJT3V2t444tkD6pfkeewkR+ZyS+0M6d
         WANQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WKZ1lD7amZQ43PEKfQN08kS4ubsRVEOTz/DeTkKkuvI=;
        b=TvIC7yO0YjSlsCcGLojxh8d1GxjNFMsZVB/yIxVQu+x+VyKdSAFz1b2nkj3lMmrrdx
         d4wiVtH0sJeUh8Cd8B/2TCAtdg+4x/z1wX70jRC3FP5sn+U8jiqYu8vBGOakYObCIjwr
         HoIoU9XiL2MLYjl4yYDHbO+tg0atUcfjymb35Gh8ZQefipwJ1X5fF/cboP83a+tj6moZ
         l6fKgbrpYgrjUpOJ9/9SWw0JDP3iE8fhhzWcB995YFPwueqwtwKr3Ox8ncEPg8SMFp+v
         NVTCSsRbdJ2oUxMoTipggFSBAUaU1EvP3aEcyCudjEX7Siq5OLwW76zU/s0pV+AyPpw9
         ui1w==
X-Gm-Message-State: AOAM53103VgqFRxaJliTMpmxzBIaTigVB0pvDFNQneErbljGUfCXr+ow
        zKrzLmCUK01pDaJ9klm9HNKvfYpnUE6FZovp
X-Google-Smtp-Source: ABdhPJztMuVjyOmb91fdetucxb/2S3YQNrXGtfi7eoL1DDx9CV+Sw+ABjfN+YAdcK0YfERx+6UX7tg==
X-Received: by 2002:a05:6000:2c8:b0:204:f83:ba35 with SMTP id o8-20020a05600002c800b002040f83ba35mr804184wry.539.1650065452769;
        Fri, 15 Apr 2022 16:30:52 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id q14-20020a1cf30e000000b0038986a18ec8sm5995473wmq.46.2022.04.15.16.30.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 16:30:52 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com, nab <nabijaczleweli@nabijaczleweli.xyz>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 0/3] Prepare the Makefile and scripts/ for releasing
Date:   Sat, 16 Apr 2022 01:30:45 +0200
Message-Id: <20220415233048.70477-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Hi!

I'm preparing the Makefile and scripts to be able to release
without hidden scripts, just from the repository.  I put in the
Makefile everything that can be done incrementally (or at least
idempotently, since tar(1) doesn't really allow incrementally
creating an archive, unlike ar(1)), and in scripts what can't
(i.e., the COLOPHON generation).

I tried to follow conventions (from GNU and others) as much as
possible.

The COLOPHON format was kept as I see it in existing pages in my
system, with one difference: until now, the URI in the COLOPHON
wasn't being enclosed in <> (the script didn't use .UR/.UE).
I fixed that.

Now one can generate DISTFILES (.tar, .tar.gz, and .tar.xz files)
simply with the following commands.  The version number is taken
from git.

	./scripts/append_COLOPHON.sh
	make dist-gz

Of course, the generation of the COLOPHON is not a dependency for
the generation of the tarballs, but it's likely that both commands
will be run together.


Cheers,

Alex


Alejandro Colomar (3):
  scripts/remove_COLOPHON.sh: Allow passing directories to the script
  scripts/append_COLOPHON.sh: Add script to append the COLOPHON section
  Makefile: dist: Add target to create distribution archives

 Makefile                   | 49 ++++++++++++++++++++++++++++++++++++++
 scripts/append_COLOPHON.sh | 38 +++++++++++++++++++++++++++++
 scripts/remove_COLOPHON.sh |  6 ++---
 3 files changed, 90 insertions(+), 3 deletions(-)
 create mode 100755 scripts/append_COLOPHON.sh

-- 
2.30.2

