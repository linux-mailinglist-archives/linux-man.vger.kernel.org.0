Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C65D229BB90
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 17:30:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1808737AbgJ0QVY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 12:21:24 -0400
Received: from mail-wr1-f53.google.com ([209.85.221.53]:38893 "EHLO
        mail-wr1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1797066AbgJ0QVX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 12:21:23 -0400
Received: by mail-wr1-f53.google.com with SMTP id n18so2601549wrs.5
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 09:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+a3YUeXM2clpxir2G4ECFmQJijtNB86KvgOijVKrjbI=;
        b=TSBve41fKkuL4+IbvjV/VCBPH7/xW6VXASVMctQmz8WW9e7GW6BG++z/KFaEH8htSn
         vOnjGBxE6NnAFY+3vl3f8XMlSfuSIhU7+cFj+2o0VxFKZ4rJjOi9jqf7WzGsoG6GoP7L
         q+rJ2PP6cKlRtOmKmiwvNT986vGj1t/vLjHOujrsvASAHM/poaMkwhy998saSds4gfqj
         447gO+D+nDSHv4akVipiSmfwP9BYkXamTJVow8OlxMu5pYSCKk1o6Q8TAMpr8i+lb691
         fiPWcRAxR6uz5i8u/VzeNePfHCHfglek/sScq40skem4cEcwiLUupYEq/DKrpjnS4B1K
         Xc4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+a3YUeXM2clpxir2G4ECFmQJijtNB86KvgOijVKrjbI=;
        b=sop061QXNAomcLOumaGy42hoeF/nM8iREraFIDSXTEOsLOF22j5AMuostgRg2sxO8O
         6OuATEoDUciLs6FSNBMUh6JOaJFTr2GhTnIoX0CX6LYOv+eo/enziLXlYEYR+30LxRJ2
         r3DkY44XKHV/zpncvQUEr+idAfE2Dggk4BAbDR/siaeV8JlRp0c+9Jm33tYABTcbp2wj
         7RbLg8nBFGuqQEZWZhULzMdx7rjLkZTvTROpK3w4w3cYfXh99RIrlRYw73MIe1bw/SDM
         ooOs85Nat6uYx/1SEg8mb9URqBOk6NEgLwXZ1Pm1kySxMrFUuKDvJFlzQjwivYsWrhQj
         85gw==
X-Gm-Message-State: AOAM530rMnZQlrZdyUf3VEIvUYJKXAZqpBl/KPR0SyVhsKw4Hg8RayPP
        5t548ZzQkfSFjN4kIKbAewc=
X-Google-Smtp-Source: ABdhPJxwOtyQ/ZUcLjoVdtrcmSmdf8dHf5KYevGIPGCwSSKkrgZt//WxOSox1Ca1qbtZbBaeV4NSHg==
X-Received: by 2002:adf:80cb:: with SMTP id 69mr3712740wrl.325.1603815681412;
        Tue, 27 Oct 2020 09:21:21 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id u5sm3108839wru.63.2020.10.27.09.21.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 09:21:20 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 0/6] Add loff_t & off64_t, and update off_t
Date:   Tue, 27 Oct 2020 17:21:08 +0100
Message-Id: <20201027162114.47521-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi M,

I added some details to off_t,
and added loff_t and off64_t to the page.

Maybe you would like to improve some wording on these patches.
There are a few lines that don't convince me fully...

I might start working on fixing the messy *lseek* pages.

Cheers,

A


Alejandro Colomar (6):
  system_data_types.7: off_t: SEE ALSO: Uncomment loff_t, off64_t
  system_data_types.7: off_t: Add note about _FILE_OFFSET_BITS
  system_data_types.7: Add 'loff_t'
  loff_t.3: New link to system_data_types(7)
  system_data_types.7: Add 'off64_t'
  off64_t.3: New link to system_data_types(7)

 man3/loff_t.3            |  1 +
 man3/off64_t.3           |  1 +
 man7/system_data_types.7 | 76 ++++++++++++++++++++++++++++++++++++----
 3 files changed, 71 insertions(+), 7 deletions(-)
 create mode 100644 man3/loff_t.3
 create mode 100644 man3/off64_t.3

-- 
2.28.0

