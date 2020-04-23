Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B57701B5957
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2020 12:36:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726764AbgDWKgj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Apr 2020 06:36:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725863AbgDWKgi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Apr 2020 06:36:38 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46CE4C035493
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 03:36:38 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id t12so3959253edw.3
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 03:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc;
        bh=c2DgTuj2CDlI7Py6VNUC7U7+4A7fdoM7mhJ/zeD4iT4=;
        b=LKV4n+mL4Yp6+7LEv158nV1rxWiKt/qb3A1RDAmE7GIFFgixsw35VbNVTf6wM20/U2
         v/d6d74jgOqFAY8Gple8wLoh5KcgIi9ytAHJqlZsLuH7vt/5Fgc9fUEcSXJ3SzHBi7p6
         3kBssgNquW5kJOLU+LFniCodyZsO6wkXfMrxk3C3OPoG6E7XKvtd9fkPGWkGnz5mOVZD
         4583PNZ5gqp7jL6Deno2gIL6gAj9IOCj9iqO64LxtOP2Jpa9SB6JpLubogVn1lphzTRl
         hntBA/k4RPjJ8mtC0XcWEcouXKALVE8QUo/8DouGf+0Mte3QSdFGk66LKLSWJowCw2qQ
         QNKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:cc;
        bh=c2DgTuj2CDlI7Py6VNUC7U7+4A7fdoM7mhJ/zeD4iT4=;
        b=pdEuakNY1S9nfP7GpEvXPK3MYSro4a6C1RtNpHnE6ezDuTNK2yCVQXjECb2U2JKb/F
         vAUFtHzaO0BmYCMib/S0LbV0C6yaXhCkUq56LDaJFhxSuad7LNIFao2Hc8P8X+PDIS83
         hAgio5mqpIm5Nu3XZXZzJg8fNUSi+2TCVd3DnM8/mkTY+VnP8gU5udwQ0sw7vyHOdqHu
         XbZQg7rtvWHWlloBWCuBev/HHv39E+q1hoZ5577RuxmphWH1wlzhARolrTNdGssyEa68
         6C/LfP9HtAiT5iouLU/OLHlQQjx1VnJDYCfa8UNHOlIbCHIR6hhxlkJzIRgYHT4mzLJH
         SYBg==
X-Gm-Message-State: AGi0PuZ5tror/kZnxpOriizduoOOTAlGkQsZkXC5L+92Eyrcm4ZRPtD9
        bXIpxpXj6+f6HaQQ50LMWZ+N+q+ofu2bM0ngslwjvoBv
X-Google-Smtp-Source: APiQypKueSyxIkY2kDiyWzoJ7mccPnSD9juDSTxSCHgPRpqhJIKLMifCYFf56VcSgK0JIktSCbDUv7Sc7Ro4QDxy4S8=
X-Received: by 2002:a50:ec0c:: with SMTP id g12mr2238789edr.140.1587638196948;
 Thu, 23 Apr 2020 03:36:36 -0700 (PDT)
MIME-Version: 1.0
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 23 Apr 2020 12:36:26 +0200
Message-ID: <CAKgNAkjshc5bjT2gc7wBU6nkq1BxrcV6mEs6JSuepxFjHtupOA@mail.gmail.com>
Subject: Kernel bugzilla 198569: fanotify_mark() and FAN_Q_OVERFLOW
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>
Cc:     Amir Goldstein <amir73il@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, alexandermv@gmail.com,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        Jan Kara <jack@suse.cz>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Heinrich,

Would you be able to take a look at
https://bugzilla.kernel.org/show_bug.cgi?id=198569

It relates to some text you added to the fanotify_mark(2) manual page:

       FAN_Q_OVERFLOW
              Create an event when an overflow of the event queue occurs.
              The size of the event queue is limited to 16384 entries  if
              FAN_UNLIMITED_QUEUE is not set in fanotify_init(2).

This was in the following commit

[[
commit 5d730f864a6603b090cd1078668cede05d02b8c4
Author: Heinrich Schuchardt <xypron.glpk@gmx.de>
Date:   Tue Nov 8 23:13:38 2016 +0100

    fanotify_mark.2: Mention FAN_Q_OVERFLOW

    To receive overflow events it is necessary to set this bit
    in fanotify_mark().
]]

As far as I can see, FAN_Q_OVERFLOW (test program, reading the kernel
source) is only an output flag. But on the other hand, I know you are
generally careful, so I wonder if something changed (though, at a
quick glance, I could not see evidence that it has).

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
