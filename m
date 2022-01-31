Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F7E04A3F3E
	for <lists+linux-man@lfdr.de>; Mon, 31 Jan 2022 10:29:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233106AbiAaJ30 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jan 2022 04:29:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231160AbiAaJ3Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jan 2022 04:29:25 -0500
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 642FEC061714
        for <linux-man@vger.kernel.org>; Mon, 31 Jan 2022 01:29:25 -0800 (PST)
Received: by mail-yb1-xb29.google.com with SMTP id 23so38406741ybf.7
        for <linux-man@vger.kernel.org>; Mon, 31 Jan 2022 01:29:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=zSFB7oQQQGyDJGlGUEnEBQ52FfBHFRAuEXIvJyAyJ34=;
        b=Y9OFR8UeGNv0zPdFrl6PlayyX9dXlvqIGS+EEuOLIImlLBzu9dKQep4bT5N+Sc9YQY
         3wPnMQpMQAkT0RRo0yBenE+UFK6NPeLd3bg662mbDz4fttD/90AbRw1jthqIBO9AqkjM
         K91sdEdOajp/mGVxqA3aBUtOfnGT5mxzR/GNp1IziccfJ1Nk7xwizIujdT9Ah4+8dIAc
         0s0OylWp1GPcAN8W11L9+vqJvoXxyiwh52yZHXyZD2HK7z6AjbWcONinOVGFmPLE5SGH
         Pq7o4M7gq5RytOjwOQpA6XyDhGwQwENdo8zgjZNJk3B97IlQb3Xd//NB0SsUP05mmBkk
         FgSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=zSFB7oQQQGyDJGlGUEnEBQ52FfBHFRAuEXIvJyAyJ34=;
        b=YWvrm0zci43ALWGVkY1TCWLd/4wP4R4n7IplRekJ2TA397oM1q8X1EtMYFITY/y3d2
         KSiyLGI1E8SrOTzoARi15YvG2J7dK7ZWC9eEsBqny+8wqI3K4h9trAxBC07625/cWhh8
         BenZ+qJmeToFS4bK3P/K8TZ9sws7xhD4ZHrMGdOQp0W3vXwZLOLiL21uB/+FvIoaIkNn
         GDCnBnx25Tgztp6WwmUmvBjMSCmC6aSI9xa2UWWwhC4i//iEBFzT2PpECcKJinRDOa+D
         d+w9m2bUV0CPody4gZjo2Zz2QW0hVenkypNS5+s9SG8CPUHnFvg8sp3E+umpkIDlVz7g
         WOuw==
X-Gm-Message-State: AOAM5307odF2QY7l+/q0fcYZMV1kRgnwq9klso063/afyl28D+8RKL6W
        o/xuS43VOboTw7+u+rZ4WfrQ7kzXSdSWiO78OSplNhp9dl4=
X-Google-Smtp-Source: ABdhPJwVP1hGLPi6mYxwfnjOhe0b/OY1VYEeMO9EhlXiRQMKUdtWoGHTdAe1lB5xIX6NIUv5J8o037qqHXnV0jfbbl0=
X-Received: by 2002:a05:6902:100f:: with SMTP id w15mr22538547ybt.349.1643621364513;
 Mon, 31 Jan 2022 01:29:24 -0800 (PST)
MIME-Version: 1.0
From:   Ivan Zuboff <anotherdiskmag@gmail.com>
Date:   Mon, 31 Jan 2022 12:29:13 +0300
Message-ID: <CAL-cVegvPvu6kZgn5x=6gimzuSTfCErKzTL+8+1UgQxM3fiNQQ@mail.gmail.com>
Subject: SA_ONSTACK: man page and glibc reference manual in conflict
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello!

Man page says:
SA_ONSTACK
              Call the signal handler on an alternate signal stack
              provided by sigaltstack(2).  *If an alternate stack is not
              available, the default stack will be used.*  This flag is
              meaningful only when establishing a signal handler.
https://man7.org/linux/man-pages/man2/sigaction.2.html

glibc reference manual says:
Macro: int SA_ONSTACK
If this flag is set for a particular signal number, the system uses
the signal stack when delivering that kind of signal. See Signal
Stack. *If a signal with this flag arrives and you have not set a
signal stack, the system terminates the program with SIGILL.*
https://www.gnu.org/software/libc/manual/html_node/Flags-for-Sigaction.html

As far as I understand, statements in *stars* are in conflict. glibc
documentation says that "While the glibc manual remains the canonical
source for API descriptions, the man-pages are an excellent
reference.", so I decided to mail you supposing that man page is
incorrect in this regard.
https://www.gnu.org/software/libc/documentation.html

Please correct me if I'm wrong. Also, sorry for my bad English, this
is not my native language.

Best regards,
Ivan
