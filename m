Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B354D3D9692
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231158AbhG1UUf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231359AbhG1UUf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:35 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02FC1C061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:33 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id b9so3990918wrx.12
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zOqhdyc1FLQUTZYidx2FaVo5PNLE05uQZEra3XpQjyw=;
        b=bx2OyXnyvfRH1Iia6brD8y04Kryb2XKmNodGPk5ZonCsMQ9rOpMUcJ4vYT0tJtNEXi
         R6Bg6vUPBjMyPqRquypyyoFj6QYaYxPKVu0PtggjdE5cEtIsd4HWjjHQ4z5OUz5z8em3
         XjTohHF57VbzL857QhUTR0LtWbzDsbUjzChjmSb42WmJjYBkVVi0BZiyad17HR/Qbaiu
         MwVDQycEcII73SfisJ5Jg0xtIWgpH1aET3HIJAnb3L7bd8PMq2l2PkOKXC7LCVnyFWpk
         OCO09G+CYCEwvkDsnXy+6In/drF1skkWo5De5doSpiV3O2ohHhAeOcrDP0QgvR4S9n2f
         gFBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zOqhdyc1FLQUTZYidx2FaVo5PNLE05uQZEra3XpQjyw=;
        b=IgbjOWUAJgfQP3+MiUODfHw5v50KwsdiKUzhVhVO6oXIOqqVzABvFdZPQARFbHuBCy
         DjyYnQnKkTsn45CLH1k0D7LGg9nbL+hlTvVOz72VZB0LV9Fwq8vwhm8LGtol7DuP2m5Z
         WqODRAL5Y1CeVgSXcJdUGM+XiIGubfAAUmB/iQ2qRrn/kaVv63akwF2JESCcN8RWuTSM
         cRcX6PP8Q5C282MbiXW3Xul6zMxz/gXlmkAcA53d+//8PLx3o2oRhogLXbi3J6uwn/Bl
         Xin7OISalkoHIG/9vyEhM9uGddM/eHGWOq6YAZB84FJOhKmznvK3lsWQU3wRPjec42we
         GMTg==
X-Gm-Message-State: AOAM533XfSvdIktS3fsqqp5lHAfJmNEhOiDa5fIom0wY1KLa+IIH/6kh
        g/qhlH8P+jGtshgqaVP+/EteTZOtS9g=
X-Google-Smtp-Source: ABdhPJxO51pZpBzuMgRMb9fJeGwCJK0y6LU1HpiLOTrkquyUX1TmR3MD0HltYx7gBE4FVrvoV7Y3NQ==
X-Received: by 2002:adf:eb4c:: with SMTP id u12mr1103107wrn.111.1627503631695;
        Wed, 28 Jul 2021 13:20:31 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:31 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?=D0=BD=D0=B0=D0=B1?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 19/32] ascii.7: add vertical rule to separate the two columns
Date:   Wed, 28 Jul 2021 22:19:55 +0200
Message-Id: <20210728202008.3158-20-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: наб <nabijaczleweli@nabijaczleweli.xyz>

I regularly get mildly lost in this table (and, indeed, didn't realise
it had two columns the first few times I used it to look at something
from the left column) ‒ separating the two columns improves clarity,
and makes which soup of numbers belongs to which character
much more obvious

Other encodings don't need this as they don't use double-columnated
tables

Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/ascii.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/ascii.7 b/man7/ascii.7
index f1c0c8d74..053b13809 100644
--- a/man7/ascii.7
+++ b/man7/ascii.7
@@ -48,7 +48,7 @@ C program \f(CW\(aq\eX\(aq\fP escapes are noted.
 .ft CW
 \}
 .TS
-l l l l l l l l.
+l l l l | l l l l.
 Oct	Dec	Hex	Char	Oct	Dec	Hex	Char
 _
 000	0	00	NUL \(aq\e0\(aq (null character)	100	64	40	@
-- 
2.32.0

