Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10A13553531
	for <lists+linux-man@lfdr.de>; Tue, 21 Jun 2022 17:05:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229850AbiFUPF1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Jun 2022 11:05:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351521AbiFUPF0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Jun 2022 11:05:26 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 061A527FD5
        for <linux-man@vger.kernel.org>; Tue, 21 Jun 2022 08:05:25 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id u15so469277ejc.10
        for <linux-man@vger.kernel.org>; Tue, 21 Jun 2022 08:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=vkLr7PQWRcV106KEq9j1O0mazIQpoI7RSuoIJgiYwS4=;
        b=O194ijb45X6O9MbcMG9jFZP3o6p56tZSk3lK4jU3DEIh8uYcGf6JZa4wfs5Tera8Fe
         luOV91llXSYY9C2sfunJ7o5bJ/VBdPvrql9rkXIVqzgUZoSk9lL+9gh0GIKAGVJfg17e
         bAG26ZpqT0lqFkFKzfcDVR6uEInBLn/nDxGJ71sgNxgjTu8Zk+8aZe2kT7p3WaY9iCa2
         QzEcKbsviFFvI0Ue9c1HkODPFBzKmtEUnTcBWC1TYbT45czYlwvqM0O5Mrk/gdOikthi
         omEI6/L47XmT38Nn6tybGI/VDxFb08eLISTUIrlorAAv2GCd2pkLu6ohSfbsCGZMZQS2
         9GzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=vkLr7PQWRcV106KEq9j1O0mazIQpoI7RSuoIJgiYwS4=;
        b=I1Z0DMcLAKhMCQRDZwOKily5zrmftX8V5MNDdr5Q/axfjbZdU0L29yZRBZw9QypEkq
         GA/WKotXCRfBhME+pGlBdj2RT78zeOjrz6I9gCxjKPbvP/9rGrzwb7NXzluT98XadK5p
         o9SOywsLpRAhbXZhyov/eyOYgKSSEjXLB+Neayv5FjnMrYGKTCQEVRxTE/xTas8kFEsX
         /iH+5DPPgFnveBB/5jEFSyMT4RLDJYq+YWRJ8mde/6JDgsI8dmk/cGlQvMcquRP+Ghyy
         9GZc4wCobpKjs8p1ZaRXsNHJqTMHAO5Am28nCbh7SLgl78ldPE//L7+Ryf9AEsIwOFI1
         5chw==
X-Gm-Message-State: AJIora9nFEJYXeZ198GI5qSySO5hp+E4kvWgDnTyik5Jt++EI1caGStt
        ejDcaKnS+sYXxg4vHQ/Wbhy1mS2WtYm5zW5Gfp8=
X-Google-Smtp-Source: AGRyM1szKzLl5MODb6Vf1Jn/77JLZSHdsKVWV/b9rNQFCU6wTF695xIxFwNAB0yLan7uiHiV0KsMGz0qns7trJSxRm8=
X-Received: by 2002:a17:907:960d:b0:722:c64d:6be8 with SMTP id
 gb13-20020a170907960d00b00722c64d6be8mr8491436ejc.665.1655823923408; Tue, 21
 Jun 2022 08:05:23 -0700 (PDT)
MIME-Version: 1.0
From:   =?UTF-8?B?0JzQsNGA0Log0JrQvtGA0LXQvdCx0LXRgNCz?= 
        <socketpair@gmail.com>
Date:   Tue, 21 Jun 2022 20:05:11 +0500
Message-ID: <CAEmTpZE3eityutpf3QcF4pVuN-ZQGPd_8WhF0jXRGf=9qZBsTQ@mail.gmail.com>
Subject: fadvice/madvice is not clear regarding moment of calling.
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Suppose I want to read some data from a file only once. Since I don't
need the memory, I need to call *advise() function with
POSIX_FADV_DONTNEED.

But when should I call ?

The man posix_fadvice page says:

> Programs can use posix_fadvise() to announce an intention to access file data in a specific pattern in the future, thus allowing the kernel to perform appropriate optimizations.

So, some intention in the future. I remember Intel's prefetch
instruction where I need to call it BEFORE actual data reading.
But on Linux, I have to call advice function corresponding AFTER IO
(after the pages filled). It's not obvious reading man page.

Please add something like "This syscall/function has influence only to
memory pages already in memory (RSS) and does not influence pages not
in memory (yet or already). The Linux kernel does not remember the
advice if it can not be satisfied immediately"  (
https://insights.oetiker.ch/linux/fadvise/ )

-- 
Segmentation fault
