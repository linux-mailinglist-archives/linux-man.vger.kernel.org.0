Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3D073E3994
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:41:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230354AbhHHImD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230301AbhHHImD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:03 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9970C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:41:44 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id o7-20020a05600c5107b0290257f956e02dso12159836wms.1
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=S9WupCrSFRURo8hx7Ei2/ks9HmuBezrSYPJgrQSnF7E=;
        b=VoMFOY1cdQzLmW3yocxDTAhtBFmhIa1sp3mbePsP5GkGOLSz0z8XhFATx5x3V7lGCB
         QxHKQkGZBhBVdTtZ0jsiMRrZoSDdqSK9JI5ZttH/Ne74VRZC/FXeAfyDA7HhQYDHmJ38
         uHQOpqTr6siZReabrZtSKXYq4OHVd7lVVtv8Q0Ahn95N/aEuA7t6y8hKo3tqkMatRir9
         usQlY0jxBm9EQEMSrRCQ/f2zwW+e+SmnTCbfBqViK1ZfRMBLzpyb3adIMRnS1RFM2gYh
         rK7F32dZ0H/IK/9L6eFUgcRFddldlQn07uJt7213+zfRjqtJQHt+VRleVwpvVFz7n1dj
         w5YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=S9WupCrSFRURo8hx7Ei2/ks9HmuBezrSYPJgrQSnF7E=;
        b=tkJKbAkD6vdWP5YaMo8arvxItgTGL5i610RoXNP5z9spshzji7jHsRqPcAwLsg/4qH
         tZ4IKVNs225kwe9XsHT4B9kot2CVvsGb6rig8Lvx61yfSkP7lZLZccL4WjQ2y0690XLF
         Pt+q3lPcHS/PwZAAEc6WYZs1pQvK+PP1H8Vdxxcsc6V2SBaIPw1xYimLr1T1IfGQp+gO
         l6OU4rga+pUdtUOqk4pR3LfUp8aGgjs2/PtVwoteQTUna4FFj7jcGVtjrNjKGh2gTVU1
         B3/attcXBs82G5qXLmpud7jciORa0SdQJ+3kMDnN1m0avrdiQ1VLy/p+m5J15BvqbUhj
         TQqQ==
X-Gm-Message-State: AOAM530nabjvtwD4ipvVmpBhZ/7o62fA4BOsicsjUU1fL7p/tssl85TN
        CsjdN1XbZhY8cY/ERG2Sl80=
X-Google-Smtp-Source: ABdhPJxUi8UwcvKPMmX04BXIWf+Vpx5nhXdwj9v54xaC2uDPmzRzHOO/OvfLDdEmlpnGFpr4XR/O3A==
X-Received: by 2002:a1c:4e1a:: with SMTP id g26mr27631826wmh.52.1628412103405;
        Sun, 08 Aug 2021 01:41:43 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.41.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:41:43 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 00/23] More patches from others
Date:   Sun,  8 Aug 2021 10:41:10 +0200
Message-Id: <20210808084133.734274-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Hello, Michael!

Here's another patch set with patches from others,
and a few small fixes of mine.

Cheers,

Alex



Alejandro Colomar (7):
  sigaction.2: Apply minor tweaks to Peter's patch
  futex.2: Minor tweaks to Kurt's patch
  getopt.3: Minor tweak to James's patch
  termios.3: ffix
  mount_setattr.2: Minor tweaks to Chirstian's patch
  ldd.1: Fix example command
  close_range.2: Glibc added a wrapper recently

Christian Brauner (1):
  mount_setattr.2: New manual page documenting the mount_setattr()
    system call

G. Branden Robinson (1):
  man-pages.7: wfix

James O. D. Hunt (1):
  getopt.3: Further clarification of optstring

Kurt Kanzenbach (1):
  futex.2: Document FUTEX_LOCK_PI2

Michael Weiß (1):
  namespaces.7: ffix

Mike Rapoport (1):
  man2: new page describing memfd_secret() system call

Pali Rohár (6):
  termios.3: Document missing baudrate constants
  termios.3: Use bold style for Bnn and EXTn macro constants
  ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2, TCSETSW2, TCSETSF2
  ioctl_tty.2: Update DTR example
  termios.3: Add information how to set baud rate to any other value
  termios.3: SPARC architecture has 4 different Bnnn constants

Peter Collingbourne (1):
  sigaction.2: Document SA_EXPOSE_TAGBITS and the flag support detection
    protocol

Štěpán Němec (1):
  unix.7: tfix

наб (2):
  pipe.7: also mention writev(2) in atomicity section
  regex.3: wfix

 man1/ldd.1           |    5 +-
 man2/close_range.2   |    5 -
 man2/futex.2         |  111 +++--
 man2/ioctl_tty.2     |   32 +-
 man2/memfd_secret.2  |  146 ++++++
 man2/mount_setattr.2 | 1006 ++++++++++++++++++++++++++++++++++++++++++
 man2/sigaction.2     |  133 ++++++
 man3/getopt.3        |   10 +-
 man3/regex.3         |    4 +-
 man3/termios.3       |   74 +++-
 man7/man-pages.7     |    2 +-
 man7/namespaces.7    |    3 +-
 man7/pipe.7          |    2 +
 man7/unix.7          |    2 +-
 14 files changed, 1478 insertions(+), 57 deletions(-)
 create mode 100644 man2/memfd_secret.2
 create mode 100644 man2/mount_setattr.2

-- 
2.32.0

