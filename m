Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC6A820D87E
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2020 22:09:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387422AbgF2Tje (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Jun 2020 15:39:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387430AbgF2Thm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Jun 2020 15:37:42 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EEFEC02A574
        for <linux-man@vger.kernel.org>; Mon, 29 Jun 2020 06:41:44 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id s10so16555905wrw.12
        for <linux-man@vger.kernel.org>; Mon, 29 Jun 2020 06:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=from:to:subject:cc:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=Um9ZhqDwZaJ1jotOlf0sRP8wK6W5V3Pu6ZeNtKZRklE=;
        b=mma4h/OZ40vfDFxsXhO8mmfzr+V2g1okRH0FTGRk7iP9Dcee122UepIF1zgjqVY/Ys
         Bu0QquYg6DQiaYbof5/celiPkcm3SrK7cQLFoTi9uUiF8g6gyPJ1Ir/UjLb8MypUHhZx
         r/1oQmjpiFsGFg7InDWTHuOvj77yXzoNQFvJIAZAjcGy1Y2C+c75qPZJeGglmiN+gFno
         +phMMOZXSm3pK1BA46fmOq/JfqwHh/PthTkCsY50ScOEm8wKXQxZxaYPs14KdkvD9F1A
         e+kJDgFF2dLb861wX4fhZI4vVpn5n5CXXxGguZ8Iet+r8hYZcof1/oLVAXm/VeAZJxS+
         4J4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:cc:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=Um9ZhqDwZaJ1jotOlf0sRP8wK6W5V3Pu6ZeNtKZRklE=;
        b=fmF4jCID8j0fsqnIE9YHclScHsLXXOA300gR9s6oCL2hkDZQpgsVwxp7E497LhJCCr
         O8deYt3fKlHrm4eLfVW+0Gqmk5pW5Qe7Z55G/3S9Dny9hJu7wqORaAxWl1FOz6rvPiiF
         +PQPNuADdanlZINfvrKjxp7OTTJQhtziYufvX0cDCNe4Y85Tecrr5tJd/jQGkbO2RJA1
         0H8GVh+jPF7lbzzGo2NcSDGFwpljdG8cs0PaipThqGDXuCCwgjT3Ny29Z54haCondmZS
         begL6FG9n2g9PzeuJnGVOr7Sy9L7MAdvZwdSf6ZiAic8E2jS4piX2d6aM4ijll3SeiLU
         1GQw==
X-Gm-Message-State: AOAM531fpmB4+AY42Zy1SxXZf+4SFA6PJ3yjjBkQsYB9ya5xzWEPc9rM
        /s6FNZo8xef7Z/rehg0l/kQPufAOx8w=
X-Google-Smtp-Source: ABdhPJy8TJ6p1VtSCLpsp0okyjJKssEgU1luSlPe4hm7PzxOX9V7E7p8NmS2Mdd0Gc8e8cNrNyaOxg==
X-Received: by 2002:a5d:498f:: with SMTP id r15mr18179059wrq.175.1593438101975;
        Mon, 29 Jun 2020 06:41:41 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id d13sm33454191wrn.61.2020.06.29.06.41.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 06:41:41 -0700 (PDT)
From:   Jonny Grant <jg@jguk.org>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Subject: strcpy compared to POSIX strcpy
Cc:     linux-man <linux-man@vger.kernel.org>
Message-ID: <0608691a-6400-0a44-1031-a693f57dee52@jguk.org>
Date:   Mon, 29 Jun 2020 14:41:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Returning to an old topic, noticed strcpy man page is different from the POSIX spec with regards to "terminating NUL character" or "null-terminated" shouldn't man pages should follow POSIX style writing "NUL"?

https://man7.org/linux/man-pages/man3/strcpy.3.html

https://man7.org/linux/man-pages/man3/strcpy.3p.html

https://pubs.opengroup.org/onlinepubs/9699919799/functions/strcpy.html

Another function even has nul in the name
https://man7.org/linux/man-pages/man3/strchrnul.3.html


Regards, Jonny
