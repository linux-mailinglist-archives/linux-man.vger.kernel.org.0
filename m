Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 108B1BB931
	for <lists+linux-man@lfdr.de>; Mon, 23 Sep 2019 18:11:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387908AbfIWQLi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Sep 2019 12:11:38 -0400
Received: from mail-ot1-f47.google.com ([209.85.210.47]:40558 "EHLO
        mail-ot1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387848AbfIWQLh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Sep 2019 12:11:37 -0400
Received: by mail-ot1-f47.google.com with SMTP id y39so12606757ota.7
        for <linux-man@vger.kernel.org>; Mon, 23 Sep 2019 09:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=fhVzwEe09tNZ12hduYXGBdajqzxTfGmRAz/3nE2xqXY=;
        b=tYQa5WRXUi5DQbw+P2AoFa21aRAf1F5RutSsbB6T8B0RGwG+uelfizQFfCmJxyprPE
         l+2SEA3A9ehoBovWgUB5B6s7D2dcDAAnOrOgjV/W0h/cQROgyVJZ69QxJ0KstGGhIqTf
         ewjvTtG+dXHapIZLtgedXPef0lzT8YHiWfi8YjiETBSJmE4rLTIwTG3J6wr604jc5Ggy
         PmOjaANOLZLNgowGjBHtyu0yK9V9xuFaRzvkpe1+NeMEA3PTsQ9QJPHh81XHYAA8FoNU
         LvCHUQ/w2Ah/ED28l2I3HeP1n6znGCzvrW8v1qMMHbZ/4lRi0bGmaBVIXQS3cGVwlERQ
         8Jnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=fhVzwEe09tNZ12hduYXGBdajqzxTfGmRAz/3nE2xqXY=;
        b=UqGKx2Ssya8IX1WYDNdxXdeV/+YHdjK4aJYm4Cef3n/8Pnx8zgJqM/FGLXzha8/oaT
         rjTEQFsGLuOU81mJmM5mUb7+FyMpP9rN4kFknjr97PrQR5JMjaC56gMY7W4w4+rpikg8
         eRNjJGwGeIuNLtAwPJD4zvdyRGX2ZI7HlD7lkG0GD40SNcbo+tKUHsR5GsyzQIK5IyAk
         IorhCe9Zz1ZiRcdQMaaMrgCmsM/drdiyimpMKVOKu3u58cMqrsaW/4T3ciugniTC0ybV
         +b6rT4lFKGzxVETJLZY31Ra/lL6pSVq447+MbO7XJx1fsgl/Geq3E5+hZ6EZdHyepS7a
         Jbtw==
X-Gm-Message-State: APjAAAWO4TMbGPqyq0xEZ9/SMIV4rDHWcSkGYwa7j9XursElnQMX+q1m
        ZsqMemGHfByHYZyZoE0ncAcYYXVJgVjFSYNJFiL8xA==
X-Google-Smtp-Source: APXvYqwybyBKQ5mCTxGFWOi2+PhyCLiYgk3X8U+pTx2zjkhpCsCWF2F9FUENSz8Zrr/9ihMhsFMY6xvINUdVySAvZZQ=
X-Received: by 2002:a05:6830:18b:: with SMTP id q11mr565166ota.94.1569255096177;
 Mon, 23 Sep 2019 09:11:36 -0700 (PDT)
MIME-Version: 1.0
From:   Christian Biesinger <cbiesinger@google.com>
Date:   Mon, 23 Sep 2019 11:11:00 -0500
Message-ID: <CAPTJ0XEsnRRgdJ0LOXwfnV3At=urH=bp1mKW7o7=b5WQovz_oQ@mail.gmail.com>
Subject: glob man page incorrectly says that it does not do tilde expansion
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi there!

I noticed an error in the glob(3) manpage:
http://man7.org/linux/man-pages/man3/glob.3.html

    No tilde
       expansion or parameter substitution is done; if you want these, use
       wordexp(3).

However, the manpage does list a GLOB_TILDE flag that does do tilde
expansion. This should probably mentioned in the introductory
paragraph as well, as an alternative to wordexp.

Thanks,
Christian
