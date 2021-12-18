Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5625D479C2C
	for <lists+linux-man@lfdr.de>; Sat, 18 Dec 2021 19:49:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233775AbhLRStz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 18 Dec 2021 13:49:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233729AbhLRStz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 18 Dec 2021 13:49:55 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAC81C061574
        for <linux-man@vger.kernel.org>; Sat, 18 Dec 2021 10:49:54 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id c66so169003wma.5
        for <linux-man@vger.kernel.org>; Sat, 18 Dec 2021 10:49:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:cc:from:in-reply-to:content-transfer-encoding;
        bh=r3QzxjlXNEXyX8SVbOqfurcAVOLow1d5GKnpCcTljTo=;
        b=nqGW4Lmt1nh9fPFR29eRzEFcT06Syd76wWmEz6XcY8ZgFNki9qhpg+4pNRCgRG+D8v
         d7+3Hw0QhRL0rS88BEvleHN9Tj21YaFoKJhiIX5YCrBLEv1XTg3JEmZcxLzrt3AJvftd
         y+5d06fnKljbVDxOweSwVEZtEKTKb+U8yahnLVMaUNkPzfCXt0Q7uVzuDCu/9uZm40ev
         inEv7+UjQ6q28qMxNAbN76koGvFxgVqNW09enRLXbTegDGhJ7gxogpi5PLqiuFZPk8UX
         ajsiEhXc4nz/uI35cve8Mj04KCXhh6pqOVEd/H3Rj4y7QXeniqbAEsWcc8kwFJhdfB6d
         +oKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=r3QzxjlXNEXyX8SVbOqfurcAVOLow1d5GKnpCcTljTo=;
        b=K9YA7ils2w3TTZopKxk2WkUU9FzxAW5XL2Q+cz3gpTZB+REslo6jOO9B+LeXy139gS
         Fhl79yWeH41g2IIjOo5uFxMaaW1t+mg7pVnI3z7BEp/blEGnjKgH008Asx1RKHQqTKB5
         y2s42gA1bdAAGsfunD6Dwo7YKMZcR2qZ+7sQoqqD0t+f5zhlqpVTkYhveHS4urbDldwK
         LMAM8iN8zcWXMXPoDMVdO1zzQ/rjg0UGIwykXfb0rkWGhNpQG5jvuk437R1NS5ieUH+z
         165j86DY6L6R2/C9SDGVTSfCPjXxYuh6w3lPCpCuInFO6k4bnfrZgRvGsX/TNv4+GoAE
         2xYA==
X-Gm-Message-State: AOAM5316FYdDbeDMBlregWPCQ5zvvBg+v8fHAEFZW02Fn3w8yzXOoNnR
        EgbBhNtOBLKom9JQsd2VaTs=
X-Google-Smtp-Source: ABdhPJwW62oQxJfHHvVyYFIJXkAEiP9eQ+XlA9KvLtgCvQQyFXOgWNcYKlnSIvQP796b7HbqAqiXtw==
X-Received: by 2002:a7b:c256:: with SMTP id b22mr14194419wmj.176.1639853393454;
        Sat, 18 Dec 2021 10:49:53 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q206sm7040721wme.8.2021.12.18.10.49.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Dec 2021 10:49:52 -0800 (PST)
Message-ID: <ab5627e1-b45c-3972-97fd-8c2b74a7ca85@gmail.com>
Date:   Sat, 18 Dec 2021 19:49:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: access(2): document EPERM error value
Content-Language: en-US
To:     "Todd C. Miller" <Todd.Miller@sudo.ws>
References: <2f39442130f5717a@sudo.ws>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <2f39442130f5717a@sudo.ws>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Todd,

On 11/28/21 16:39, Todd C. Miller wrote:
> I'm sending this via email rather than bugzilla as it is a fairly
> trivial change.
> 
> If a file/directory has the immutable flag set, access/faccessat
> will return EPERM if write access is requested.  This is not currently
> documented, presumably because it is Linux-specific (though BSD has
> similar behavior that is documented).  Perhaps something like the
> following in the ERRORS section.
> 
> EPERM	Write permission was requested and pathname has the immutable
> 	flag set.  (See also ioctl_iflags(2).)
> 
> Also perhaps add ioctl_iflags(2) to the SEE ALSO section.
> 
> This came up in reference to:
>      https://github.com/sudo-project/sudo/issues/122
Thanks for the report!
I applied the following.

Cheers,
Alex

---
     access.2: Document EPERM error code

     [Todd]:

     If a file/directory has the immutable flag set, access/faccessat
     will return EPERM if write access is requested.  This is not
     currently documented, presumably because it is Linux-specific
     (though BSD has similar behavior that is documented).  Perhaps
     something like the following in the ERRORS section.

     EPERM   Write permission was requested and pathname has the
             immutable flag set.  (See also ioctl_iflags(2).)

     Also perhaps add ioctl_iflags(2) to the SEE ALSO section.

     This came up in reference to:
     <https://github.com/sudo-project/sudo/issues/122>

     Reported-by: "Todd C. Miller" <Todd.Miller@sudo.ws>
     Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man2/access.2 b/man2/access.2
index 3b3992488..6c084826e 100644
--- a/man2/access.2
+++ b/man2/access.2
@@ -280,6 +280,11 @@ is relative and
  .I dirfd
  is a file descriptor referring to a file other than a directory.
  .TP
+.B EPERM
+Write permission was requested to a file that has the immutable flag set.
+See also
+.BR ioctl_iflags (2).
+.TP
  .B EROFS
  Write permission was requested for a file on a read-only filesystem.
  .TP


-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
