Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C2303EE0F2
	for <lists+linux-man@lfdr.de>; Tue, 17 Aug 2021 02:33:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235108AbhHQAde (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Aug 2021 20:33:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234966AbhHQAdd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Aug 2021 20:33:33 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81051C061764
        for <linux-man@vger.kernel.org>; Mon, 16 Aug 2021 17:33:01 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id t35so29395189oiw.9
        for <linux-man@vger.kernel.org>; Mon, 16 Aug 2021 17:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=vfYwaMhQ68CQZwuxWDvogbSGRusdQW43juaNum/BFEI=;
        b=H8LZdGyIGPUBzoAZUUJlc5ZL8hOwyzRA5mgG1S6GkcAKfyNjhnEUc6GDZN3yRAdWRk
         P2ydk6NpeMkEPY1bLU9qmQ49T10KWpjQw+REscdpu6xcD7iZNwmiwgXxi6gpHXoWjjt5
         9IxsHNlDAzdkG/NIZIBOO/Wne/t0SM7zSEhXU5LUwpyYMmKjMSOuwmhSooDuwbo/3xHz
         4xbb3+eunmXqM/o68RKicNNpqxVhZZTO28Z+hdhBFiLNcs+JKjsaS4Mz/GjuMQcjVnXS
         nYbcs6nWEUw/AkJZIibQTsbRGlQS5IoscO7FihnQ/Ek5CjlIugOBqTi0ONYEma4HURGG
         hJaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=vfYwaMhQ68CQZwuxWDvogbSGRusdQW43juaNum/BFEI=;
        b=jCELv2TayzmDb1wKdOTqP7tdwnremru3+EZ/Bsik0PdBqi0fY/X/zxJliA6Sbiy0aZ
         LUOx/3fU5Pmuwtuqq6oP9HQeLRWeHT0uihULeJFdShngZYxLLZEaQJnEulQJCccKEdvu
         rm0Itk8ALPOnwhWefISI5pdqgm5+p47N5CLV+57aDmjCEPl/D4l0/JOflOv8oNT6Ij0K
         VYN7xulfpFoE2bgiVqBM8DBNas3K9AZ88bqkgwsuoCZIK5HEM97yE7VoBeY++WYhp6Q6
         XTWDQfzP6Aa5OOgFCbLIE6e3PqJuRwcBtQZLpM0Jw5FL7mBLZlR3tl/GbRPqcu/087P/
         NQnw==
X-Gm-Message-State: AOAM531XqhWJF3T3EivX9qfF1IQ+FSrDXM0LsmJU6zOV2QXZu45pHtez
        uR3K/phGbcTQiPIO+p+pM5JGPurIure9rLk366J12AFa
X-Google-Smtp-Source: ABdhPJwPelXeHQOJ0XTH50XaxZ+2+5tRweFxU95lLJ97upl8UwxQbHn+G17OGfybMceWw2zbLfNvHxPk9sGj+9ImEQQ=
X-Received: by 2002:aca:c456:: with SMTP id u83mr366696oif.150.1629160380965;
 Mon, 16 Aug 2021 17:33:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6830:b89:0:0:0:0 with HTTP; Mon, 16 Aug 2021 17:33:00
 -0700 (PDT)
From:   ropers <ropers@gmail.com>
Date:   Tue, 17 Aug 2021 01:33:00 +0100
Message-ID: <CALi5TcmAPDALKzsWoAR0zUSdXJ-cBrX2LTbUHyYL0U2f0WGzrA@mail.gmail.com>
Subject: 1p description in intro(1) -- or intro(1p)
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello man7.org maintainers,

You have many man pages that are categorised as being in section 1p
(currently 175, according to
https://man7.org/linux/man-pages/dir_section_1.html).

Perhaps you might want to consider adding an explanation to intro(1) what "1p"
actually stands for?  Currently that explanation can only be found in
your changelong as far as I can tell:

> "Once upon time Andries added a number of Section 1 manual pages
        to man-pages.  However, since that time, those pages have not
        seen much maintenance, and are not in fact distributed in most
        distributions.  Instead most distributions supply the
        coreutils versions of these pages, which are currently
        maintained.  In addition, man-pages provides the 1p pages,
        which document the portable subset of functionality of these
        commands.  Since the man1 pages are mostly unneeded, and
        out of date, I'm removing them."
--https://man7.org/linux/man-pages/changelog.html

Thanks and regards,
Ian

(Ian Ropers)
