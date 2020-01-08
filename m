Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CA64713502E
	for <lists+linux-man@lfdr.de>; Thu,  9 Jan 2020 00:57:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727545AbgAHX55 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Jan 2020 18:57:57 -0500
Received: from mail-lf1-f66.google.com ([209.85.167.66]:37050 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726721AbgAHX54 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Jan 2020 18:57:56 -0500
Received: by mail-lf1-f66.google.com with SMTP id b15so3805981lfc.4
        for <linux-man@vger.kernel.org>; Wed, 08 Jan 2020 15:57:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=trxhwpp9W8sEe1oHZjs9N67G1YAE2zTo8jEkiN81Tu8=;
        b=sasPCF/Mj6QsXgcC/reSWoPVUJoQuJJfhOCj73tWTnwfqC9RDxxpqiU3jvRWcqTXvH
         JdlhE50HY3cOjReCsvmdLMFu0LLCWr21bWWRhsxwsKUkhzgzZ5DRXOG+VdSb3Q2W2U0C
         HQsIIo7XVjCAib9CmZoJVqs1KbQb1ZhojuQ7xCYO8xdDad2iaqHWEsxLhrxzFRMcPWEj
         9pu8ym5qPn4JHaToFFEvZGs/+ds2RW82FSt3N6l3XAFPuZxxbcPHPsQcm8O2nUmjVSr7
         wgeTBzZL/wkY2GF+hFWPjLCUttqO5wWZQn6wrShZQhDVuAkNtRLq4UynAVEkj8/q/4L0
         o94A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=trxhwpp9W8sEe1oHZjs9N67G1YAE2zTo8jEkiN81Tu8=;
        b=FL8FoXy/U08ArpmzTJt8UjBXpABR9TvkQDYFAR5tKH4uvoiAByh3sxzfj/ygUDrCre
         VdIOdgaFhDN5zYIzo1LTxkEqW3U8txCeVerCz9w1ycS+iYF5jhqeKS0USLl0eF4+PnQZ
         65OjS30bfmP3RM0Y9g0I4WpU2WD0krKgNG+a1AS9NCjHl+x+kXKN6Y4KsG2TMDSVR8jm
         jYa4oeUnH3nCRoVjjfPYHil4EH/IF6px77V7HvYHlamWg8bVm7etBH7VMQAfBPSW65Dv
         YaUwO9o43J9D1Hv3O4pagThGuIhwoW1fCIJpOtj5UZSq0FC5CqfBDBWjUV+if6FX9PyU
         sa/g==
X-Gm-Message-State: APjAAAVR9f7RjAIZ0eM9FlkJ5VDSrj50ra6CuTSEAhGXZX39XW2RJKEG
        y7kf3aYiFMIffxxM34piYl6A2BDc9XiV1jnzkSUw5g==
X-Google-Smtp-Source: APXvYqzPb4f5CeJRE+6kdMVBA8vvIAIJ3Q/e1GukOweSo7h+P9AjD1EmFjuIlBRC6VxsjxwINspowyfX4VS8AvfbX6g=
X-Received: by 2002:a19:f701:: with SMTP id z1mr4284903lfe.13.1578527874573;
 Wed, 08 Jan 2020 15:57:54 -0800 (PST)
MIME-Version: 1.0
From:   Daniel Colascione <dancol@google.com>
Date:   Wed, 8 Jan 2020 15:57:18 -0800
Message-ID: <CAKOZuesChdRSgY+W90kPJkg8UQzqt66ngsg8sX1VCLCvVdfDUQ@mail.gmail.com>
Subject: [PATCH] Mention EINTR for perf_event_open
To:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Tim Murray <timmurray@google.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Somewhat surprisingly, perf_event_open can fail with EINTR when trying
to enable perf reporting for a uprobe that's already been configured
for use with ftrace. Mention this error in the man page.

diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 25876c36c..b9128f542 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -3228,6 +3228,10 @@ values are out of range or set reserved bits;
 the generic event selected is not supported; or
 there is not enough room to add the selected event.
 .TP
+.B EINTR
+Returned when trying to mix perf and ftrace handling
+for a uprobe.
+.TP
 .B EMFILE
 Each opened event uses one file descriptor.
 If a large number of events are opened,
