Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8243638CFB1
	for <lists+linux-man@lfdr.de>; Fri, 21 May 2021 23:17:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229503AbhEUVS0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 17:18:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229583AbhEUVSZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 17:18:25 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D5A8C061574
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 14:17:01 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id z137-20020a1c7e8f0000b02901774f2a7dc4so7430053wmc.0
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 14:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oUg46kx14XrfUsDR5NlO5lxVJwF+2WgcqwFjmOy3qBo=;
        b=rpXKAAULZ9UV9KAXkGzZeoZ2t4kKAIDhfkFpAyWXQzAHK0fsdrCtqHFmilABe2SxE2
         v2EIcFVyfchvlUHnuCs/kjPvIY8e1/p8X1P24QSFmGejuUaWRJkvmKm977zWDeeNmiUz
         6WkeYUoE8fBF9N1X+S4TVdqbQhdW75KrhBml+Wl9ayP04vL38bDx1uSWQsRnZbkViACe
         hmkUbnERAHZ5UrfHULUzYLAMe0lLJc7PJCNBCxbLWpRXeMzMmzrNDNyYWAxFuixM1GHb
         3cZVhLw69P+nzfHsX4W+gR3rVd+/7GVuvM3dZ/o/VVerluresxLjRF+pO4zBNipa+ufY
         PwHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oUg46kx14XrfUsDR5NlO5lxVJwF+2WgcqwFjmOy3qBo=;
        b=rWWbeJUTNV+BfFZWHq6xWu83CXI04+Rm3Plp265hj/DBPil/Ztv9lRtuG3FPC1ur2G
         uiAYzL80eFBu0jX2SaDlrg3g2eqwL/GeQouAuQzOF3ZQ2/nzSrDzN/PI4335/1t7Aoxc
         dyLKkVqyniZ23U4AMzMaX9kYG2fDVelnSDVzq2295iKR/P6Nw25z5694OzMDJpNku7At
         Uma5kBTPFd0LayDz5LU4JbjotWR4+3eGXhSucA/6h7PxfFX4arHTCG8cm7fCz9jeFSM9
         V362H6sp/n3jwX9Pp1x2+oaB+mBGpQKn4ayyEyAeGo9Ffwf+RKgFgy3icDfG1z1JAkRl
         8MKQ==
X-Gm-Message-State: AOAM5332MKHwy/ZIGB0iFyuelDXcxNTcBDdNEsApclH5oODZihvCN8vh
        3YCviKwYSsu3a0f+DCs4ZPg=
X-Google-Smtp-Source: ABdhPJxEuaSzHj3jDQRdx7+jd7Z1yQP5gB3+K6lCsZnEYLYRTl/jei6pd8xfTPYBUh0wx9f5oSiwkg==
X-Received: by 2002:a7b:c0cf:: with SMTP id s15mr9799198wmh.134.1621631819199;
        Fri, 21 May 2021 14:16:59 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v10sm3944489wrq.0.2021.05.21.14.16.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 14:16:58 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC PATCH 0/4] man[23]/: Add LIBRARY section
Date:   Fri, 21 May 2021 23:16:49 +0200
Message-Id: <20210521211652.49949-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

As I told you some time ago, I liked the style of FreeBSD for specifying
where a function comes from.  See for example:
<https://www.freebsd.org/cgi/man.cgi?query=open&apropos=0&sektion=2&manpath=FreeBSD+12.2-RELEASE+and+Ports&arch=default&format=html>
and
<https://www.freebsd.org/cgi/man.cgi?query=gamma&apropos=0&sektion=3&manpath=FreeBSD+12.2-RELEASE+and+Ports&arch=default&format=html>.

I wrote a few pages to cover most cases:
- A syscall needing syscall(2).
- A syscall wrapped by a library other than glibc.
- A syscall wrapped by glibc.
- A math function.

What do you think about it?

Cheers,

Alex

Alejandro Colomar (4):
  _exit.2: Add LIBRARY section
  keyctl.2: Add LIBRARY section
  gamma.3: Add LIBRARY section
  request_key.2: Add LIBRARY section

 man2/_exit.2       |  3 +++
 man2/keyctl.2      |  9 +++++++--
 man2/request_key.2 | 15 ++++-----------
 man3/gamma.3       |  5 +++--
 4 files changed, 17 insertions(+), 15 deletions(-)

-- 
2.31.1

