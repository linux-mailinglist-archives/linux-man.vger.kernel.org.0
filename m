Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AA731B5B66
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2020 14:28:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726105AbgDWM2W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Apr 2020 08:28:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726090AbgDWM2W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Apr 2020 08:28:22 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9ADBC08E859
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 05:28:21 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id g16so4186995eds.1
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 05:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc;
        bh=Pvngdrcyd3Dzo/ztgOGPpILt/Ouac87wxxgpndx0Ang=;
        b=q7wFkd6xFyoy3PqeUlwdAkvn3hQiqc0yXNf4g5b0yV8QzIDvby7fQ+tmunqlKhh+nd
         kNUf0P7Bd5+3s3lCkhSBlIMb3XxHFg+AqGETuBUhGn1peLr7ZkCk6EUDPB3lw4GEzx6P
         WHqbsB44+hVmBc9+LMLaBURNC13AsoK84kNT49254B8U/CQdECmgGN03Ud8BUv1cChdF
         TDlPLFSzoY8ajzzLhqzXK050r1QXlT4Lx138iFNOPNy/r0wpWJQlrRI1nVF6k8qi3qbk
         CLFEwns87MSqthlOKsw8gD040MShwMI33g0cfgbmxGsgm0Q6IWmj6nZ/OxiR4jFrLrIp
         F34A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:cc;
        bh=Pvngdrcyd3Dzo/ztgOGPpILt/Ouac87wxxgpndx0Ang=;
        b=l7uPLaXWtt3oSgLi6MZYF0FivFaDnekSMQyfelLdcSCpYH6J7B7aic1r7uKiUzI8Rq
         AEa3QrhAVvwVPiYZyOlBOBA5gp0Dl7P8hByUM9GdweRdgTcyPak3nyR8V8BM7zBmWep2
         gYQ0E4F2g0hjYT+lnLgC6wrwrCwTSDwf9TtsA0KvygP2u2jGMBAdcnH22RWoqVT6DDZ6
         Ed5Al0uHtPLhtq1huK0n9fsqD5cKl7dTbo6p46zO2152x0Jdh8OQjggGv8WXKsewHIhB
         mzpDJBkrKKCGORMidioqVJPTmAOBSEGQHRjWfuVyiE9bIO4ljG1i+zhJt+RgGL3Iym+6
         5qzw==
X-Gm-Message-State: AGi0PuapQQjZh10+8jPQI7KaUuAdRddJGQhLtZxv6d4enCtvkN58hIyu
        1y1fwfNvsyyHTfQqa964fnC3YsF2eBMDQ8ZEGqg=
X-Google-Smtp-Source: APiQypLNn58CedcypQok2zkw1HyRnd2G9rQPQtie6bYE1WwHWyfvUvdtQmkxIY9UN3DmbWgE7cv1Mtpea/1w/TqIr+E=
X-Received: by 2002:a50:ec0c:: with SMTP id g12mr2619889edr.140.1587644899694;
 Thu, 23 Apr 2020 05:28:19 -0700 (PDT)
MIME-Version: 1.0
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 23 Apr 2020 14:28:08 +0200
Message-ID: <CAKgNAkiOkwsrQhit_+eFdvVGUMw2sKp8rQbLv=rM-Uf7QwnCTw@mail.gmail.com>
Subject: Bugzilla 207345 zdump(8) manual page -c/-t options
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Marco Curreli <marcocurreli@tiscali.it>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Paul,

Could you take a look at
https://bugzilla.kernel.org/show_bug.cgi?id=207345 please.

It relates to the documentation of the -c and -t options.

My guess is this: in "-c 2018,2020", 2018 is translated to the seconds
equivalent of '2018-01-01 00:00:00" and likewise for 2020. And though
the seconds range may be treated as low-bound-exclusive plus
high-bound-inclusive, the user is easily confused, because the output
*looks like* low-bound-year-inclusive plus high-bound-year-inclusive.
I think some more words in the manual page about this would be
helpful.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
