Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 58EC63E39C2
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 11:09:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230309AbhHHJJy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 05:09:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230301AbhHHJJy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 05:09:54 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1637EC061760;
        Sun,  8 Aug 2021 02:09:36 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id e2-20020a17090a4a02b029016f3020d867so24930047pjh.3;
        Sun, 08 Aug 2021 02:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=vp+J4V9l3LFTS0jqtNCjIc1QlhwFicvyNcSGzXJshgs=;
        b=YD8DfYorrcdEatdQxxCOpG6B2lewhovoeYQYPUf82QYKJ5sQ+YAMQGxnMFPIUs0GeT
         N7thCT40cWOtMVAkZ/mWl3l+5dns4H+aJxDUHYmreDxwETZi8e1GJ3FZn7Ia7yM6felA
         aov+dZeqSSvM6lRLwgKWSjrj0hPvGmDfLkXxz9rsaDU+zcmVnm4+Fyr4wDu4HKpOLsEI
         dnxB9uw5tznCgSSM8FZ9oXzq7/9jIW3SJm9JPKxTRrrWxe3wMoDh+XqJHF8hCRENmgxo
         IzxO5GdSHCTMCGHshtsum4BjgsagRpAYnn8bVQch1wC1MdzpI12hygr5cN2JPI15JG9k
         v55A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=vp+J4V9l3LFTS0jqtNCjIc1QlhwFicvyNcSGzXJshgs=;
        b=mFM88f3GezYNJWMMaoAzMGBQRdpBn9dljkjDxnlEJIk7QpZC8Ti5sBjrkhSMQ4vAqj
         Fnd652dBNkSMQDbZMyhfVqcbLHHK9m2wSotjLd4rqdPQKRusF4N4fJ7ZuzSRXPMgB7At
         7gZdo7QmVMD/9Tg+Nxw5hnozIWF39U3FuiqZjgF88M1LP2tjfyXNYUvXJiXOnAGn+33t
         SCotR+FJtjj73l2euaJJVDu1F6yPUBuLlfN2exShx5/0GtBB1Yi2KMJLyR0rBvBoNw8p
         V94YqT+InEC4L5Dj/X6j1HYg9hky79IzDXFUEFpyM2mzM3/XM5qKxEst33MGM3Sb8rk2
         uEJA==
X-Gm-Message-State: AOAM533M4Eq2TWUvcoSaVg7TyiCpMQ/1psJj8OvVtedgDcK7uZbq31M8
        PjGIl7LLRRCl7ODOgQ/eS3GvKCBQLM0=
X-Google-Smtp-Source: ABdhPJynv2x6ElMPs+z0HGH87bRIsNE7TdgVFVuta56WptbNORt9IAGfqM0hXCKBZ8EXxIh7XYc1ag==
X-Received: by 2002:a17:902:db08:b029:12c:4619:c643 with SMTP id m8-20020a170902db08b029012c4619c643mr15901773plx.26.1628413775390;
        Sun, 08 Aug 2021 02:09:35 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id i13sm16309491pfr.79.2021.08.08.02.09.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 02:09:34 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        linux-security-module <linux-security-module@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Kir Kolyshkin <kolyshkin@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
To:     "Serge E. Hallyn" <serge@hallyn.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Documenting the requirement of CAP_SETFCAP to map UID 0
Message-ID: <14cbab6f-19f6-a28c-05d8-453ecca62180@gmail.com>
Date:   Sun, 8 Aug 2021 11:09:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Serge,

Your commit:

[[
commit db2e718a47984b9d71ed890eb2ea36ecf150de18
Author: Serge E. Hallyn <serge@hallyn.com>
Date:   Tue Apr 20 08:43:34 2021 -0500

    capabilities: require CAP_SETFCAP to map uid 0
]]

added a new requirement when updating a UID map a user namespace
with a value of '0 0 *'.

Kir sent a patch to briefly document this change, but I think much more
should be written. I've attempted to do so. Could you tell me whether the
following text (to be added in user_namespaces(7)) is accurate please:

[[
      In  order  for  a  process  to  write  to  the /proc/[pid]/uid_map
       (/proc/[pid]/gid_map) file, all of the following requirements must
       be met:

       [...]

       4. If  updating  /proc/[pid]/uid_map to create a mapping that maps
          UID 0 in the parent namespace, then one of the  following  must
          be true:

          *  if  writing process is in the parent user namespace, then it
             must have the CAP_SETFCAP capability in that user namespace;
             or

          *  if  the writing process is in the child user namespace, then
             the process that created the user namespace  must  have  had
             the CAP_SETFCAP capability when the namespace was created.

          This rule has been in place since Linux 5.12.  It eliminates an
          earlier security bug whereby a UID 0  process  that  lacks  the
          CAP_SETFCAP capability, which is needed to create a binary with
          namespaced file capabilities (as described in capabilities(7)),
          could  nevertheless  create  such  a  binary,  by the following
          steps:

          *  Create a new user namespace with the identity mapping (i.e.,
             UID  0 in the new user namespace maps to UID 0 in the parent
             namespace), so that UID 0 in both namespaces  is  equivalent
             to the same root user ID.

          *  Since  the  child process has the CAP_SETFCAP capability, it
             could create a binary with namespaced file capabilities that
             would  then  be  effective in the parent user namespace (be‐
             cause the root user IDs are the same in the two namespaces).

       [...]
]]

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
