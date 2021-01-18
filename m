Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE5002FAC55
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 22:14:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388466AbhARVNj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 16:13:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2394531AbhARVNC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 16:13:02 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39E3DC061573
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 13:12:22 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id u11so19618792ljo.13
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 13:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=lH38FCuJLa1RujVqQaf3XAD0tbGmwUfemgnBKBv0//0=;
        b=mEF9pOJQm9HbPbvGipC8frh7mOD6dT3iAgdF1EKJRP3SyHWYpx9Mm/0JEVLutuh9ia
         Nl7xyrOXTpRynqJ9r8IxAB3U9kzzEhy5azRwtmKOPUlBvhWVVixaVBpCwxKxD9092Zdd
         e9McN/8sixOtKU//UepVTTEZSZuIZlYb0B5xHkg8Nb6iLEmfVIWNXTtT9PkGwGrfYnhe
         WV8yjYJDnbT4q53GBIH6GIwuRoV1JS0VTCpP01TfA556R+MZLXdlnHRQZWDdPAB3ssPm
         K0YzF8V5mjz7bBVhwPZd5fcrOrenEdK2rCcuTTMQmfPVoPY93TjcdOPBAMo6iXTwO82P
         3GPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=lH38FCuJLa1RujVqQaf3XAD0tbGmwUfemgnBKBv0//0=;
        b=Kub8JrCaMs1o2fG2eF5fHP3jfFWCjcEZTKOmreVq/Hpeck49zxNoJ9H4kuztqRGEZp
         EqEP2vcIcfj3NRrw//S7rX7uUlD/CweEVxq9mq6u7wuD/fJIBsgp6vVMxYcrpSWQLdGV
         IUDtfl6MSJXKF5K8yKZtS2Qu/3mSDC4I3Sa/cR55yD08DE9YQWAJJpKDEDLC/y4a4fCA
         +JOnYJMdxo4IGdDiwWjvEgUFUi7dK5q/5LFafezuf9VbU7McPuNF/LwnHFir90loZBRF
         YUZtWfHyzMH+UXARLkeuJEhNRJFrW54+ryAUEbz9e+nBHp/6SDI4JailixSJgNO4njDN
         5DYQ==
X-Gm-Message-State: AOAM532U1uBxvQ7TkazjHGwfanTPuU+Ou8PhZesD1XARH1KDmIVUrR9E
        XWch9aBIkemV/IUcX+V/BSx+ba9NdWx046iclJSYE6nMUoHEqOVeYJAvOw==
X-Google-Smtp-Source: ABdhPJzywuZGSiSwKoGPq8F2Cx6CGEWPUtxN9O2w57gqRin0xbBGioJlSM2ZEa+on12i/v4ux4UCU99Jd09K+RkVBdc=
X-Received: by 2002:a2e:3a17:: with SMTP id h23mr551635lja.435.1611004340511;
 Mon, 18 Jan 2021 13:12:20 -0800 (PST)
MIME-Version: 1.0
From:   =?UTF-8?Q?Johannes_Wellh=C3=B6fer?= <johannes.wellhofer@gmail.com>
Date:   Mon, 18 Jan 2021 22:12:09 +0100
Message-ID: <CADCwPKhAHqn-R8wpp-7=skOB8O6mRqOvP46oTUUmA6QX0R=4bw@mail.gmail.com>
Subject: [patch] clone.2: tfix
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

For the alternate signal stack to be cleared, CLONE_VM should and
CLONE_VFORK should not be specified.

Signed-off-by: Johannes Wellh=C3=B6fer <johannes.wellhofer@gmail.com>
---
 man2/clone.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/clone.2 b/man2/clone.2
index fecec90c8..11eb6c622 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -1187,7 +1187,7 @@ processes do not affect the other, as with
 If the
 .BR CLONE_VM
 flag is specified and the
-.BR CLONE_VM
+.BR CLONE_VFORK
 flag is not specified,
 then any alternate signal stack that was established by
 .BR sigaltstack (2)
--
