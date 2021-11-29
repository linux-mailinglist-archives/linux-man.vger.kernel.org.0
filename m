Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F6F7461F8E
	for <lists+linux-man@lfdr.de>; Mon, 29 Nov 2021 19:45:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354380AbhK2Ssz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Nov 2021 13:48:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378948AbhK2Sqz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Nov 2021 13:46:55 -0500
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7C3DC0494A3
        for <linux-man@vger.kernel.org>; Mon, 29 Nov 2021 07:01:08 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id u11so12411483plf.3
        for <linux-man@vger.kernel.org>; Mon, 29 Nov 2021 07:01:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KZQGjfwSDZuECzXtU1l9C64wmBVnaYxtV1l9rGjkAx8=;
        b=RL9vrxw2nGCXT2qySctvjCwFWXBph5fuSZUMVQCw+vmAjw3ddikRsHSes1FgTELnxE
         A2qHwE+UOOyRBDmhamEl1eTX0qOY1U/mk2AZ8x81ezdAShirqW37XR4UZI8ncwiK9pcg
         2vYikd/y3qnClP5fhIiaos0gILyCxl7R/m9n5jrp2YXQ3C49iwD7oAFMWKLfhWieGqBS
         XYJbVL4X12f0iKqjpEzrngvKloAr1G4gNyoCS+QaAyft/Jl/fyWitf5CSb83Rk99RcT3
         lpqAxqYUwv8AN5aNwME+nbgc89iRCyw4y3riP4QpFWbb9veOHZ2fkpjMBnhsemVdlgT/
         jF9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KZQGjfwSDZuECzXtU1l9C64wmBVnaYxtV1l9rGjkAx8=;
        b=YsKwEKP/CH7iUMdS9tRpZAjlbrDchWWGqI6mhJD2lYaWp6SuVUGozHymon8fGMSx6u
         OOVsN5Jz+fJnrxD7pdVuP4Hi+j1rc89DzlXUwv7mCnMuruwSkg694q4aA1MY+dXg+qOi
         TYJ21TMho6qdsdFohwKOfSAOgTv4U+pSOilyz6elwZP02whHzwz14UzYY/SVdkq21PLg
         3R++hbyl8BMVIBnE8bXPq/NEdSUng8cBzEFolmNAVY4VKbAWxqpiw/HRMJx+LuanzDbB
         inr6yCCBEKNtQqN3vFxcKoT38MowJJDUntQts4H52AW+Oky2xhYeczbzYikRXfdd+j+w
         HQyQ==
X-Gm-Message-State: AOAM531jGSlc0uyXYqzqrxRIx77OhFTWIlY20TYl/qHO9uwS0d4BfqiS
        nDrdTpUnYKglJxROywAos3IJqAL9GwaUipuJ
X-Google-Smtp-Source: ABdhPJw1waQWLKKZw/YTiTnPwiVxUpvHWOUK8908Bb5z3JKX57Cs1KPfyVzKdW1ZDiLuqP6ox1ykSg==
X-Received: by 2002:a17:90a:e389:: with SMTP id b9mr38740427pjz.235.1638198068053;
        Mon, 29 Nov 2021 07:01:08 -0800 (PST)
Received: from hydrogen.hsd1.wa.comcast.net ([2601:601:9d00:88a0::680d])
        by smtp.gmail.com with ESMTPSA id f19sm17191229pfc.122.2021.11.29.07.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 07:01:07 -0800 (PST)
From:   Simon Branch <simonmbranch@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com,
        Simon Branch <simonmbranch@gmail.com>
Subject: [patch] termios.3: Clarify the description of ONLRET
Date:   Mon, 29 Nov 2021 07:00:17 -0800
Message-Id: <20211129150017.1435-1-simonmbranch@gmail.com>
X-Mailer: git-send-email 2.34.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello!  While perusing various termios(3) and termios(4) manpages (as one does)
I noticed the following inconsistency for ONLRET.  FreeBSD and NetBSD say
this:

   If ONLRET is set, the NL character is assumed to do the carriage-return
   function; the column pointer will be set to 0.

OpenBSD says this:

   If ONLRET is set, NL also performs CR on output, and reset current column
   to 0.

POSIX says this:

   NL performs CR function.

The current Linux manpage says this (!):

   Don't output CR.

Perhaps I'm misunderstanding the purpose of this flag, but (if nothing else) the
constrast here is a little confusing.  It looks like Linux follows the same
behavior as all the other platforms:

   $ stty -icanon -onlcr -icrnl -echo onlret onocr; cat
   this is some text			(^J pressed)
                    and some more	(^M pressed before additional text)

Comments?  OK?

---
 man3/termios.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man3/termios.3 b/man3/termios.3
index c11937458..20641f14d 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -203,7 +203,9 @@ Map CR to NL on output.
 Don't output CR at column 0.
 .TP
 .B ONLRET
-Don't output CR.
+The NL character is assumed to do the carriage-return function;
+the kernel's idea of the current column is set to 0
+after both NL and CR.
 .TP
 .B OFILL
 Send fill characters for a delay, rather than using a timed delay.
-- 
2.34.0

