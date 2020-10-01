Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18D80280330
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 17:50:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732690AbgJAPuF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 11:50:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732450AbgJAPuF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 11:50:05 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6BDEC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 08:50:04 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id k10so6387679wru.6
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 08:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aYhJs58SWLq5/dXAlKRIGpbZHwd+YBcoyybcfhdO3GQ=;
        b=VKUC7mdWoplPfqCtaVRMI048vq4nE5HBVFbb0Upu51LJ5iodunqkf5MZKxEK06ZfsC
         T2eMfp81XCzbeKGYvtYAQAvhuXXu68jZRRQq3BAmktG3h2oWmaDW0/dvv1xPeZsgfWen
         u9ZnP44MVDAXE+Ji9ejOG3UB+rxyOVwWUqlXD0HUNiiGB+2mB7BfZFRjEAeMwgZxOEhf
         lx0RJO5EzQjSiKqTU7VpPSDvG+lGuprI7a9FeWoLcTcMDPMU9T7vEbLZlSbISEyQSY61
         9GIk+hG7hrhSCNLChCmNeEr1KKY2+fZb7Cf4J9dd4EAbxM6Gi+vB/J7T5AhH8/WfElBH
         evkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aYhJs58SWLq5/dXAlKRIGpbZHwd+YBcoyybcfhdO3GQ=;
        b=tJtqxSj6eOuWEQqR6/6pM7U5BHufW8ZJKU99PauUgzaaUk+bcq8SSyZe6SEBuMah39
         xcc3vPT/EmSNYLGKUV/yg3Sfb8feOLacdVlwYQftlZlANys0AfDpK/Oh1PGLFEKH9beY
         C7sYyzQEPWCaArgO9giBTDC8KetFhsU6ca1TDSBLZu6fEBs1qPNLZi7bq242niiA+KjI
         SGQ7ThvZpCpDaHDvpjf0hKAl2m4ZlWp7v+m8r4B5xSZ9RVrqcMXv3sDjO37nKcDi81vf
         wis5wFVUVxgq6JG2aTKuU2JNLTH1nON2j8UXmbfNwgmkRIzOW1PFkiLBtvMcsaYwXGcN
         fFeA==
X-Gm-Message-State: AOAM533ru9YcJ4WqlLihfELN4Zp78crX7c533R79JfcKvmh7amKpUhY8
        DUNHm9LQFHKiiZJOqZU8W5I=
X-Google-Smtp-Source: ABdhPJwUNFCp8cJo7kfQoZDGMJsM5kJ7+lULDdvUz8e7fwm37SeQYYRzRjOiQqjp5MrBJAR6pM+3pQ==
X-Received: by 2002:a05:6000:88:: with SMTP id m8mr10204278wrx.280.1601567403464;
        Thu, 01 Oct 2020 08:50:03 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id t4sm10019933wrr.26.2020.10.01.08.50.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 08:50:02 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2 0/2] Document 'void *'
Date:   Thu,  1 Oct 2020 17:49:45 +0200
Message-Id: <20201001154946.104626-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I added a paragraph about not being able to dereference a void *,
and changed the link page, which was very weird.

Alejandro Colomar (2):
  system_data_types.7: Add 'void *'
  void.3: New link to system_data_types(7)

 man3/void.3              |  1 +
 man7/system_data_types.7 | 47 ++++++++++++++++++++++++++++++++++++++--
 2 files changed, 46 insertions(+), 2 deletions(-)
 create mode 100644 man3/void.3

-- 
2.28.0

