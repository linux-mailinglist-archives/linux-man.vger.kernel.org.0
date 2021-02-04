Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C04E30F391
	for <lists+linux-man@lfdr.de>; Thu,  4 Feb 2021 14:00:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236162AbhBDNAC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Feb 2021 08:00:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236110AbhBDNAC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Feb 2021 08:00:02 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A567BC061573
        for <linux-man@vger.kernel.org>; Thu,  4 Feb 2021 04:59:21 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id v15so3403604wrx.4
        for <linux-man@vger.kernel.org>; Thu, 04 Feb 2021 04:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=R784mZ/flRS2R/7G1gIXEY70KE59EsT1TpCIp6cNUJg=;
        b=ivXC/l7lYyaBY98nZU0bqKCOJ2iYNMsDN9tgHCr3jyBuEkVzTz2+kbS4qzEsgc2PKG
         XZgFlWblrogCDJaUBoGu+lQm7gMzwQtxDQtzp3FW0u0kcpC8uZ6PERcAdP3lVpabmxCN
         gfNGbaOFqHtEHrkkCjuZPVhkmkbmVsuSL946T7Z2lMHXJPyVmFpyYhIh4lTNlAE2cR/R
         SdUw6gTkG3yeeQwdvNL86BuodhQrxkEPJMnRH10A5ImB6LsanV2oYKfx1rZJmZ6yqVvn
         r3N2dHnFhCW8OzqbNE1nYGW6TFyE7xwzqrv2L6LKrDaKzulM+Z9H91PbEM/FffSIoiCy
         nbFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=R784mZ/flRS2R/7G1gIXEY70KE59EsT1TpCIp6cNUJg=;
        b=q3MIn0QmiE1xYnj2I6yTkiVXF4iyxxFajB7MfQ6Rqpmb3Enmj28oZS6vMgMJfsL3tH
         OLHkIuQpBwjKYZ8iBJYi7yUG+V6Fj9HFk1Ggrlwd/aRMV2qilv9YqeWfRsnULkYh849y
         up/bGvcafjIVeIJZqw1tKlnkK0dtz166kvuWpWXrvgWQC1kJBvkj3rzbqiDfhg/THGzV
         DtmEb95yrR4e6zCxyurukImWtkjFRrNLebVp+DdzdYDo3Uy5Q5VCT9yKT+SJJtAqNovI
         J4talNENtCOfJvMEqfgrjTO6dJmU+i5MU/nN1XnMWOXlGAZSFw6rab6OK6sOjupbVJRK
         xOAg==
X-Gm-Message-State: AOAM532hhI2Tmgn1HPqk2MIhmp4yi0UWEwclr9D1u0H/8mrN+sboatz3
        oq3UnelEpujkaAvfgv9nzxaY52tS4lU=
X-Google-Smtp-Source: ABdhPJwsL8ZqyarzBHizgHBlkN2qsOtId/FDRm6eg2KmapepeXIIlFISrSbYlF+3YUy9LK0l/U/N8Q==
X-Received: by 2002:adf:e448:: with SMTP id t8mr9426425wrm.288.1612443560464;
        Thu, 04 Feb 2021 04:59:20 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id h15sm8302517wrt.10.2021.02.04.04.59.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 04:59:20 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: outb.2: What to do with prototypes?
Message-ID: <6336a172-6bc5-bad8-21a4-0309a83728e7@gmail.com>
Date:   Thu, 4 Feb 2021 13:59:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

What would you do with the prototypes in outb.2?
They are different in glibc and the kernel.
However, since these are functions to be called mostly withing the
kernel, the kernel prototype is more important.  Would you use the glibc
one in SYNOPSIS, and then a C library / kernel differences with the
kernel prototypes?

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
