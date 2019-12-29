Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1861C12CA56
	for <lists+linux-man@lfdr.de>; Sun, 29 Dec 2019 19:25:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726407AbfL2SZG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Dec 2019 13:25:06 -0500
Received: from mail-ot1-f65.google.com ([209.85.210.65]:43838 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726406AbfL2SZF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Dec 2019 13:25:05 -0500
Received: by mail-ot1-f65.google.com with SMTP id p8so7033273oth.10
        for <linux-man@vger.kernel.org>; Sun, 29 Dec 2019 10:25:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=mGjk3yKiYDt7cl/ONx8clZM6hzBQqkS74tEX100p7QI=;
        b=e8GlAcG9sM+kjIREgYaLqmjpwwjJ7w74sD1V7xcNnHAjXBDeia6e/oYyO3CWtp5Fc8
         /EeLxH8qzg8x7zvnJM9Vm5uFhWwzHuGgv8i6rlO16ioRbkkHWqHjSiVDVlmBY/dr/Dcx
         BPJU1exH4EZ4kbrMT8IgfHnk7eqtjMAP6YSX4+/E/mzk8yp7eKRDbBrIOeI+akxREIPU
         ydUHyHrFViarQTjV3AA18RxdR7AsUkxLFW62i3DvlOcatx+LtmisF7nHCplM1PTF/3oM
         ow08Fea/AycKjO1tHRWCZMmXTVsM+FW6/OvXv+Nr9gzLSZQQ/x9OOtopVMiix8db5pyI
         nfFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=mGjk3yKiYDt7cl/ONx8clZM6hzBQqkS74tEX100p7QI=;
        b=QBfg1rn2X87kKKv5hl7CXjX0zxPSHY/12PWgfUpQP3riK5EhUCmFsP/jIMS1NiT1hn
         WG4TeaMNOiUyFuZjTmsJ7e4is/gf9sB02uS9B8ijIt0XSZV3EDKyEElQnNbrf+E4b4oQ
         M2b3rXL2tzO2AXB4xb9BKBaYGr6IXB3zfZMZACBaubRHg0CtGEsXIsDySYdvoPC2vWeT
         EXJWZ+CbZS8VNPWzaCrO0xEWoHxWxyXmeVzcFYt2Lrid+gUjisNBQDwWmYNUgJUOrzwp
         52Lp1ziLG+Le+pLCNvICOAgPsnXw3Z2jzJ07FuiPUmBFzfunjJmGnoIW17UA3tXrVDjS
         QBdQ==
X-Gm-Message-State: APjAAAWsAYXJcrYj+iGG59p4r++DqNP6VFLC5zvfJdKLefuOKQ6XkuQw
        2OSNBJLnE0toIhIVZZfEKNzoIBheaLv7YIxazIc=
X-Google-Smtp-Source: APXvYqx+ipEIFMzQPgN7oUlaLtJpA2B78txPu80xNJFzJEi8h6No4iDU6mO2Tkn0DtU0KQWzwKkByujJ0qDZ79JF7Mw=
X-Received: by 2002:a9d:7dc9:: with SMTP id k9mr69434305otn.117.1577643905011;
 Sun, 29 Dec 2019 10:25:05 -0800 (PST)
MIME-Version: 1.0
From:   =?UTF-8?Q?Antonin_D=C3=A9cimo?= <antonin.decimo@gmail.com>
Date:   Sun, 29 Dec 2019 19:25:10 +0100
Message-ID: <CAC=54BJP7GrFk=0OMgAtRk6T5W4OLdQDpfC6h0xCr57BuuBaKg@mail.gmail.com>
Subject: [PATCH] rtnetlink.7: ifa_index is an unsigned int
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

See include/linux/if_addr.h.

struct ifaddrmsg {
    __u8        ifa_family;
    __u8        ifa_prefixlen;    /* The prefix length        */
    __u8        ifa_flags;    /* Flags            */
    __u8        ifa_scope;    /* Address scope        */
    __u32        ifa_index;    /* Link index            */
};

---
 man7/rtnetlink.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/rtnetlink.7 b/man7/rtnetlink.7
index 0be59a7..6260545 100644
--- a/man7/rtnetlink.7
+++ b/man7/rtnetlink.7
@@ -134,7 +134,7 @@ struct ifaddrmsg {
     unsigned char ifa_prefixlen; /* Prefixlength of address */
     unsigned char ifa_flags;     /* Address flags */
     unsigned char ifa_scope;     /* Address scope */
-    int           ifa_index;     /* Interface index */
+    unsigned int  ifa_index;     /* Interface index */
 };
 .EE
 .IP
-- 
2.24.1
