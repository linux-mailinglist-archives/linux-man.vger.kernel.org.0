Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30A853304A7
	for <lists+linux-man@lfdr.de>; Sun,  7 Mar 2021 21:46:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230430AbhCGUp5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Mar 2021 15:45:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230194AbhCGUpk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 7 Mar 2021 15:45:40 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8367EC06174A
        for <linux-man@vger.kernel.org>; Sun,  7 Mar 2021 12:45:39 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id e23so4845569wmh.3
        for <linux-man@vger.kernel.org>; Sun, 07 Mar 2021 12:45:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=XfXyVAc5D6ewKsQbDJJadjXncRNyuQ3VKh9UEgmpfI8=;
        b=liyKh9iWZ7wnaMh69FRBf6fNCJbXCoWTpB7CB29rbKKECduLQl+gAEZWxZ+31ZzvLp
         EyyRJYazKxi6ufhat3xDtYwRctg7BkVvhhN3ivqMIJq6RZmNDvBmdZfDl+ui3ebiMCbl
         wWg0QjhlhVK/C1GA6ExYdoFUB/iHWsEODbgffAg/Y0gOKIS9sT2bK5djyzLUyLseTAQv
         isO1Sw84HIub4qzQga5LQWOiWmfb521S8gCa1zKI7T93mXr5GjSCV1oMh1ZgaJdwI8CD
         9mQh7l5qvXX2cJWyQAyWw9rGS4VCaY794m2UB4yiAe5U5vBr43ADWwhFoWCYKVZaVwiL
         eTmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=XfXyVAc5D6ewKsQbDJJadjXncRNyuQ3VKh9UEgmpfI8=;
        b=oCo5l3qcdOMAsGiRKsAhVutqeHXkh4FgokZMmvVv1ojyfg+SuCgKvoed8xT2Fn+yPg
         i1XTJwtZznNd9PnYK+t13p8yUsIKHFT2kfjIKMIGo2exIC+SZbMjUrnK5Xytuj1LmgGe
         leJLlU5f+fJSjDBczsYb+bxO4aAMjwIJOYgAPAPLrXaXg9ojKMvwtDCCgqGastVpKLSp
         wuoyWus9SVcaq3uD/ail0N11G3s41F3n0uabGv8Yr144CyNFwPcXyIR66pkzX+lK4TZb
         qo3rfYBDU0ytaNK0jbKUIz624eTtgUgi4fIes1VNsNpAzEorEJRg9jp7fkDzjz7uyfue
         j8sA==
X-Gm-Message-State: AOAM533N+EM0TQ+8zNDnazf8DJSZ60JEc+XwFpFpH9k1UuGLuDUhgqfB
        TewTdC8rQ3gdwdOyiqkYk9UkMjKX5iI=
X-Google-Smtp-Source: ABdhPJxK3mP2ffz1dUfLkUG3X0+kA0OOtqpSErN9MdXzmEjyTSyxLUFUkkZUuepw5/EeVBzzdmE77w==
X-Received: by 2002:a7b:c2aa:: with SMTP id c10mr18881009wmk.101.1615149938351;
        Sun, 07 Mar 2021 12:45:38 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m3sm14379895wmc.48.2021.03.07.12.45.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Mar 2021 12:45:37 -0800 (PST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: SYNOPSIS: variables: extern
Message-ID: <0c75854d-0c89-83e2-ca00-169d9e5926d4@gmail.com>
Date:   Sun, 7 Mar 2021 21:45:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I've seen there's a mix in this case.  Some variable declaration use
'extern' (see invocation_name.3), and some don't (see malloc_hook.3).

What would you do about it?

I prefer using 'extern' as variables declared in headers have to use it,
but have no strong feelings about either form.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
