Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C46BD11B9D3
	for <lists+linux-man@lfdr.de>; Wed, 11 Dec 2019 18:14:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729786AbfLKROx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Dec 2019 12:14:53 -0500
Received: from mail-il1-f174.google.com ([209.85.166.174]:45780 "EHLO
        mail-il1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729512AbfLKROw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Dec 2019 12:14:52 -0500
Received: by mail-il1-f174.google.com with SMTP id p8so20066686iln.12
        for <linux-man@vger.kernel.org>; Wed, 11 Dec 2019 09:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=materialize-io.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=XSe2PJIftfPQSJ1nuwaghpG4B3ZopzI2OlGQWofPId8=;
        b=jfbdcVcTcbfapdIIeBqMP2SadO0hbrIRe2gYPlToJJlmXxctKrIotf40M6Eq0e0hIG
         7sZuFWg6RgSdxWmGg+Lsi54Qk7HQu3HBiP3e7k5Gfh3kAJItP0ClQCu3i5W9l+RLhhnA
         H9GOm/e3DzR4fgJlXg7GSTp8eGYXoU7CmQ0dZUHUxtOj6uZ1ruqqGWHjlCrnmN53OV4s
         x8Cu4XE1UIfGGgM9iFDenVKxbYhfy6eImdNkJo8406nBxprA9ahfRiIw8fKkkcYJCONk
         Z8vfMUhzQgdKJmefgovsvFJ0ARspDqfHlrXnbJwc8FDa+gC20xzwSIfUgC/T6wl1nxZU
         wPtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=XSe2PJIftfPQSJ1nuwaghpG4B3ZopzI2OlGQWofPId8=;
        b=UGj7LOHIig810kOB+St6StKCPssGF+1rbUuDNRNs7Hd9Lv+4kMOW47Qgdm9H1zF4e6
         I8F+0vAm91QCsqIfU38GEndeRnOHuZe+7im8Ri+1ugkcu9KuYOsDG/kRrJy0kxKyU/W8
         QggspkDgZGuNmHqhwMsddb14sGhs38IsGtkSd80zc//mrfkLrsf6RBbEh1tIdEsVdERl
         u6FENs3hrzVcrM17kP5E8JP3dl2epNR3iQ/IthQO86jQJN2pe3CHsxepS2hKfLBI/XWo
         fSKQbyLVfe4BqbZZ/saSsb0jOr15ikak2nkqdOQ4YsY79dfgsF0MJIAa1ew9f8I6UXMU
         sXrg==
X-Gm-Message-State: APjAAAUhp0zve1fyVDCMNoZHe7whEQ4ohjsQsiN7jiKZU0qtsVjijUgW
        bMEkkhsc/qKnkLRtOwHZ7NYeMRKlqEV5M/pV6VKL29ulanc4ww==
X-Google-Smtp-Source: APXvYqxsel7xODxDc+iRPkCMyZfwJIpchzlcUEQxwDesWKooP4GXMKIw5AUwLMa7BdF4s2xbzAyDTiI4hXdI+cIPwsE=
X-Received: by 2002:a92:3919:: with SMTP id g25mr3976467ila.221.1576084491978;
 Wed, 11 Dec 2019 09:14:51 -0800 (PST)
MIME-Version: 1.0
From:   Brennan Vincent <brennan@materialize.io>
Date:   Wed, 11 Dec 2019 12:14:41 -0500
Message-ID: <CA+OW2AD5aENWxfPrYfcLKfny=NFxRBPD=_35wXfdreAVTQnWwg@mail.gmail.com>
Subject: [patch] inotify.7: wfix
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man7/inotify.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/inotify.7 b/man7/inotify.7
index 032d78d25..c052acfe6 100644
--- a/man7/inotify.7
+++ b/man7/inotify.7
@@ -145,7 +145,7 @@ The
 .I name
 field is present only when an event is returned
 for a file inside a watched directory;
-it identifies the filename within to the watched directory.
+it identifies the filename within the watched directory.
 This filename is null-terminated,
 and may include further null bytes (\(aq\e0\(aq) to align subsequent reads to a
 suitable address boundary.
--
2.24.1
