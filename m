Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3BD13BA306
	for <lists+linux-man@lfdr.de>; Sun, 22 Sep 2019 18:00:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387489AbfIVQAv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Sep 2019 12:00:51 -0400
Received: from mail-io1-f43.google.com ([209.85.166.43]:34223 "EHLO
        mail-io1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387552AbfIVQAv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Sep 2019 12:00:51 -0400
Received: by mail-io1-f43.google.com with SMTP id q1so27508475ion.1
        for <linux-man@vger.kernel.org>; Sun, 22 Sep 2019 09:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Iy+XlI6f8hkwWftJVNro5hING+zLxF8N3FpZvlIIIkI=;
        b=Mm4eSd4qe6sUgTVnyM2BAsZsfCHFaL072A7iLsjMuHtMeZMfmp8B2HNB9EOCSQUKT0
         8HC+gelTJWpp7v5DMrYWqsZuwSWXsaONLoNHoA/hyEke7nxIFrmhuh3c/S+RVK4wdlya
         84Ao9cpjsjQdcO06ch+y9+PPYMbJa4duELHl1Jx6ltnegPAnWfVynciEI/s7Qb2rrzv/
         bcWOo9DxNrP0s+SWLrTLNEVc3z/lFf5jqYweDVHLwxkHDzbn0P5L0XzVVSC5OJQ2GnRV
         lQP8VLVhnp4negA5lmiEhQS9tGYpjcDhfq1RyFr/8Wyky01tix5UJDKVK+fqUQBUBZrj
         c4bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Iy+XlI6f8hkwWftJVNro5hING+zLxF8N3FpZvlIIIkI=;
        b=rBJa5MN9PU1uqWOBuvzDtuJYhGli174AO/GHwLXGuyIbKNb2PdpPoC6fH9agU5Hj9a
         7CP1jxsRNKEpAHRz4+PqevoIIhMg7XKF8ubuJfG0RMgyvgW4N2661aghOMAjr6B4XERX
         fvbdaxXNTxaiw0IVh6EI0W8GB1OYbeOX7U59M10CP59ScO/W4j2WTpTIFPwB+YvQ0Ydt
         AA6jb5uGAem7R8gXusAdhFD/iB7mpiYSelW0/TH/JAdIZzYvkDFGq3XQgZMDJ2NY2Nt/
         z5yeS/bMtUwzzGwz/2I997xEsq5q48a332k4WapvXj9tz7bpId6mdKMydd+0dShk3x5r
         XYnA==
X-Gm-Message-State: APjAAAUVftunDp945bgVEZxajgPhLUJ/LRixbM6DGuQ+OCgo6qXbwkMz
        ym4jiog8qUx476yhBtKnN/oPcDFp1go96MsPM10=
X-Google-Smtp-Source: APXvYqye+3SH0PvSgDJHSDYTa336xjlTv5CXRnQQNCSbb7U9cCxx+549JooOog7bTNdlD4G3L9WO6ESCYRFqfATSmaI=
X-Received: by 2002:a5d:9714:: with SMTP id h20mr14545826iol.294.1569168049311;
 Sun, 22 Sep 2019 09:00:49 -0700 (PDT)
MIME-Version: 1.0
From:   "killaken2000@gmail.com" <killaken2000@gmail.com>
Date:   Sun, 22 Sep 2019 12:00:14 -0400
Message-ID: <CAEOuZD4tWLPLY+zptXsn3JHFALdgsQR0XYcB8HqrkQoJQ1+EVA@mail.gmail.com>
Subject: typo in SHUTDOWN(8)
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

http://man7.org/linux/man-pages/man8/shutdown.8.html

       -c
           Cancel a pending shutdown. This may be used [to] cancel the effect of
           an invocation of shutdown with a time argument that is not "+0"
           or "now".

I might be able to rewrite the second sentence to make it a bit more
clear but I don't want to overstep.

have a great day,
Rich
