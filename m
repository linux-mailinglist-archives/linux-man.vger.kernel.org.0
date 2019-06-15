Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0129946FAE
	for <lists+linux-man@lfdr.de>; Sat, 15 Jun 2019 12:47:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726523AbfFOKrZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jun 2019 06:47:25 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:43805 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725999AbfFOKrZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jun 2019 06:47:25 -0400
Received: by mail-ed1-f67.google.com with SMTP id e3so7473705edr.10
        for <linux-man@vger.kernel.org>; Sat, 15 Jun 2019 03:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=G12jopWoj53Q2Q6k/yc8W+AS/L1f1wiNl5bAIqGQI5s=;
        b=fkzsWxGX3P24aDyabLeOXRFK9ByBwy2vjcW/4AK96OI8zc4mx/LEX/iyyErDxmwWTl
         V2cRcYqfT1Dx4udRCXxY4bZOsZHJpz2IFNmVnL2ahJheGmQUNMMf7vVpOjhYl1MVvc49
         xgrITqCq+WWRtSaKPOG43C13K6Saq4xaOEowC1Demv3mAuanscN2D8EIIhNZ9Tc2QXzj
         VJJYEm2aO0jLvLHsXcmhXqRhBVzxdJA0HuBIPIFOke0iad3XQH4YSrHt7GWG5SZjqbP8
         MCSELeSy5XOF+fkurE+Gwks6+++GB79Mif8KARAW+c3cfCjaRaXvEUZXQkJfv4Ouf3U5
         WfmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=G12jopWoj53Q2Q6k/yc8W+AS/L1f1wiNl5bAIqGQI5s=;
        b=nOBPay0vV8KF9zsNcCjf1ltX4+M0SywMNd6SXA9RK6pPTTC0WmhZQHiesP1eD0hP/+
         alx8ZOTZIh4QckZfXIAh6g/pxZN/PN8cFuY399GRXHrBbavsjSMjp2LgTfIPe/NyHqi2
         YVZhW0XuJ9Mly/ByBV6J6rpwNQNIIYjAQn+WXalzAbZ0sGpZbkabpXXDiuqYIyyp9Jr6
         nTd3Nj3RWIyvaHCdA3hYQLkXB3+wsYm20xBGqTbgnrmEmz0zjZrJjVghAd4dcPIplPqB
         bb9hvX5vGdZ3HqnpPGphk/t4mnImG2FjkzYlyH2ecmZHXStT3SELNPFl/GJf7rC05vzv
         x42A==
X-Gm-Message-State: APjAAAWFxNWTQaeqIi6fQWsqAxx+r1Xac38e7vAsB85rCO9dcwB/7YtO
        3Vb5z9pnspg8/lOmSG+GGSYk3A5rPMG4RGTB9wg=
X-Google-Smtp-Source: APXvYqwWQJMDTPuC2Pb5xTC5jNZj/V3/UDPRk1xiwRwBN9bNcyxm7z8XIz3Qyxwaw4KMsNNa/zvGIMHP82iBAPbkMgg=
X-Received: by 2002:a50:9929:: with SMTP id k38mr84506175edb.4.1560595643244;
 Sat, 15 Jun 2019 03:47:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190507211735.31785-1-kerolasa@iki.fi> <CAKgNAkjArBeBeYU4A7OPFi5jx7aVfAbxN7kb7E-vcDpkMsYrnA@mail.gmail.com>
 <CAG27Bk1HN5Ku93ZU9hv0+Te=rt5f5JKOFe5RmRf45=xex5P0NA@mail.gmail.com>
 <6cabac85-5762-d36f-4c74-71683320ba2b@gmail.com> <CAG27Bk3VCcEAJrzbX97wTEE4D2LAvz=znwWHcAV2n1kR5D76xw@mail.gmail.com>
In-Reply-To: <CAG27Bk3VCcEAJrzbX97wTEE4D2LAvz=znwWHcAV2n1kR5D76xw@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 15 Jun 2019 12:47:11 +0200
Message-ID: <CAKgNAkgo5qmFNxJSVkD2BzBaaG6Yjo9WxRvmYfc-FVQgwGZN4A@mail.gmail.com>
Subject: Re: [patch] on_exit.3: Add example code
To:     Sami Kerola <kerolasa@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Sami,

[...]

> Oh sorry, I mixed up terminology.

Okay.

> Allocated memory can be
> passed to on_exit() and nothing else makes sense.  While one could pass
> global variable to on_exit() in that case more portable atexit() is better
> option.

I'm not sure that's correct. Particularly as the same exit handler
function may be registered with pointers to different global
variables.

I applied the patch below.

Thanks,

Michael

diff --git a/man3/on_exit.3 b/man3/on_exit.3
index d2c2c3b17..e78b5c818 100644
--- a/man3/on_exit.3
+++ b/man3/on_exit.3
@@ -100,6 +100,16 @@ It no longer occurs in Solaris (SunOS 5).
 Portable application should avoid this function, and use the standard
 .BR atexit (3)
 instead.
+.SH NOTES
+By the time
+.I function
+is executed, stack
+.RI ( auto )
+variables may already have gone out of scope.
+Therefore,
+.I arg
+should not be a pointer to a stack variable;
+it may however be a pointer to a heap variable or a global variable.
 .SH SEE ALSO
 .BR _exit (2),
 .BR atexit (3),


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
