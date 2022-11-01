Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92E3A614FB3
	for <lists+linux-man@lfdr.de>; Tue,  1 Nov 2022 17:49:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229936AbiKAQtd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Nov 2022 12:49:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229906AbiKAQtc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Nov 2022 12:49:32 -0400
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com [IPv6:2607:f8b0:4864:20::e2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BACAC18B26
        for <linux-man@vger.kernel.org>; Tue,  1 Nov 2022 09:49:31 -0700 (PDT)
Received: by mail-vs1-xe2e.google.com with SMTP id 1so14503401vsx.1
        for <linux-man@vger.kernel.org>; Tue, 01 Nov 2022 09:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VV2VJdZKh7RObWXLQg62ZHuWec9WWwA50VMQTj2lCUY=;
        b=CJ9vHmR9qG/ErRgYCP1tUW2AavAogyADXRTb9CwjGdo1/SYhuAlDIY4b16FzDbuI/I
         93X6RiQOXpQMAphetZBczAkP+KdTZZzbPkLo5+GbqUq9nYcoPsAufz07MdhRy8ULppJq
         fDaJub48fIsY/eKHdsEKlSRr+4HZtocpoqW3b6Usuhv/d7NGiKBFWnPFDpwwnF/XfT8y
         ydw4/UtuhAyCbtyibSTJht7iIJmcYA04cYtc1fNMNcbo3lpA1EoNJDaoPpCBz1+BXyBW
         nkl5cQSrqvxRAMAH3euE20t/8xvZDvu6HvxI2LCHqS7Zw1US5pdHDKBMyjK8TIbgXsRo
         dIjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VV2VJdZKh7RObWXLQg62ZHuWec9WWwA50VMQTj2lCUY=;
        b=bklnpOsNu3TXZdxI+Q0FU4k/lH3AWJGpXmO6H8kVO1SoF1QiRk1mc0VQ97livKqEEn
         ++Ba6DsoTdOydlXWDkdWhEZZd957TFUs0ggIuKieo759Gb48/TQcMAvzg5BtB41B85XO
         iAG43V+0sUiRsutbp03JPIkaUb7Ur4Ew4YYDJkMaub0sn/0YrlMww+hy02sAzlJJGmu9
         uEEKNezFJM6kR2YRgcnA8WZIqEmfcrLFc2gvojXdtAsu5P5jB3RAi+5QbHoq5YOGcKl9
         wfDp2wNvwHgXJCc5XZt3zch1TZEAlQqbDLl/TuEfd2pK2eq+//u1cnLlYbFfgQw38WCz
         qzVw==
X-Gm-Message-State: ACrzQf14t/SzMmKhbm/u90W3VGcwXmv3Rfh119u/9ovdN+K8pL4yYRkY
        Hbq4v3MXr14CvUbWWbM5ZvaHt2KqTdHc/oEzG5M=
X-Google-Smtp-Source: AMsMyM7+ROSChXzAXE0RzEtP9hyE9fS0h4yNn5Mh7ojB/MOmso+tW0aOUdnHOCpuLyFTYRNnvQdSuPmIUUW7CNtMy8k=
X-Received: by 2002:a67:f28f:0:b0:3aa:1ca4:71c0 with SMTP id
 m15-20020a67f28f000000b003aa1ca471c0mr127590vsk.55.1667321370852; Tue, 01 Nov
 2022 09:49:30 -0700 (PDT)
MIME-Version: 1.0
From:   Younes Manton <younes.m@gmail.com>
Date:   Tue, 1 Nov 2022 12:49:19 -0400
Message-ID: <CAMVNhxTgTFTyqskFoqV1=yUQZRsfd4=rVy-HjkkZjTMhfGDQsw@mail.gmail.com>
Subject: proc map_files entries require CAP_CHECKPOINT_RESTORE in init ns, not current
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Adrian Reber <areber@redhat.com>,
        imachug@yandex.ru
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLY,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

imachug@yandex.ru testing CRIU noticed that the documentation for
proc's map_files directory with respect to CAP_CHECKPOINT_RESTORE and
namespaces appears to be wrong. The text reads:

> since Linux 5.9, the reading process must have
> either CAP_SYS_ADMIN or CAP_CHECKPOINT_RESTORE in the user
> namespace where it resides.

The reporter noted that the user actually needs the capabilities in
the initial user namespace, not in the namespace the process resides
in. As far as I can tell this appears to be the case.

The text was introduced in 167f94b707148bcd46fe39c7d4ebfada9eed88f6
and refers to kernel commit 12886f8ab10ce6a09af1d92535d49c81aaa215a8.

The code and message in the kernel commit refer to the initial user namespace.
