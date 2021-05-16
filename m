Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8124738203C
	for <lists+linux-man@lfdr.de>; Sun, 16 May 2021 19:54:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230152AbhEPRzm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 May 2021 13:55:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbhEPRzm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 May 2021 13:55:42 -0400
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com [IPv6:2607:f8b0:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67060C061573
        for <linux-man@vger.kernel.org>; Sun, 16 May 2021 10:54:27 -0700 (PDT)
Received: by mail-il1-x133.google.com with SMTP id e10so2465787ilu.11
        for <linux-man@vger.kernel.org>; Sun, 16 May 2021 10:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=nzNphv4I5EbBMrMgCBzojOEubFtjzKn7FwkyYx6/LO0=;
        b=tzhUuaQAVunT3Yw99BRdESGmbGLcp2SxtoCe7WOl3qdOny0d3xftDHSVY72SbFAhHb
         CGCB3qZ8LJViESFX99MZRdxcs2tPGBWNIpFYO58iLTqqHn3KdRtD5J9+F37yKJOpgGPA
         8DnaJaMI8Nu3CPm7DlAzeReP4rV5eUaFMTXQVH/N3HNK5qjQ2Ayr+RV8y8d+loh7Hv8E
         9iH+HIjOv9IVq8k7VwbzYH0tMMwzJaTq3FaO+2cANZRWZZ7F+TLGsngjIxkDrUb0NL3Q
         WkH8udVau2xG5AaGME1smu3u4z+5h211dOK7HKYdpOaMPsg5KrwFp4FtI+/n4UE4V2hd
         Xyyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=nzNphv4I5EbBMrMgCBzojOEubFtjzKn7FwkyYx6/LO0=;
        b=UbCWRla0+uU56sDIx2g6ewpNJeOf6xahGduvfephbyEw2u0JHEmXDkT2RSUx5D3Kx4
         Yka53X8xMp5jtM7QEYE9lxaINtbwJxzgvocZDN/Ju8RiPtMaq6zsVCThv6pc43QHFcTy
         G5KIxj9GzglkBhnkOKpc/XYm92xKi0J1vrM0JtIDqAEfQ+CopWCuRh3reO45zdzZeUNl
         eMabxXTAJouZQ0EgxuIezMdR16kuy4T8KFztlsNvmKZdereVYsBWlWT+lCBls+mym+29
         4Hd7qxwNMrkL+gjNCyP+HItp8P/0CPtQDQB+6bz1x4gjtakHqiH0AQUrQaGX2k/8gWLz
         /pZw==
X-Gm-Message-State: AOAM533JTnnlIJqmQ6cPgAoFugrNbWv1TdXfcSVS4ny4Idottwui4RBP
        YoOFoVwAMU5nVdKMIRh0klD5dWgBL21oN+XDbIb3NTGErhw=
X-Google-Smtp-Source: ABdhPJxreY8o6pRPY156vpmdG4LU8YCfNO1o///Wl+vIuaA/88nTdj3FPOPmbEnY9N+omj4oevK7O05+LHDshyP8BMw=
X-Received: by 2002:a05:6e02:8f2:: with SMTP id n18mr46921137ilt.299.1621187665725;
 Sun, 16 May 2021 10:54:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAKHXDapvxah-BSSqdNSn1Dfgi-e02fd_gTiE0nWNNUTJx26YWg@mail.gmail.com>
In-Reply-To: <CAKHXDapvxah-BSSqdNSn1Dfgi-e02fd_gTiE0nWNNUTJx26YWg@mail.gmail.com>
From:   Katsuhiro Numata <byakkomon@gmail.com>
Date:   Mon, 17 May 2021 02:53:50 +0900
Message-ID: <CAKHXDaosEJJWw76UCAuvDkS4+4EGreQBG_HVL=T4Oss6wye_qA@mail.gmail.com>
Subject: tm_gmtoff field of struct tm is now undocumented
To:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I am sending it to the correct address (linux-man@vger.kernel.org).

Sorry to bother you.

---------- Forwarded message ---------
From: Katsuhiro Numata <byakkomon@gmail.com>
Date: Mon, May 17, 2021 at 2:35 AM
Subject: tm_gmtoff field of struct tm is now undocumented
To: <mtk.manpages@gmail.com>, <alx.manpages@gmail.com>
Cc: <man@vger.kernel.org>


Hi, I suspect it was mistakenly removed in the following commit.

https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man3/ctime.3?id=ba39b288ab07149417867533821300256f310615&h=master

Katsuhiro Numata
