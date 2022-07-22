Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 460B057E1FC
	for <lists+linux-man@lfdr.de>; Fri, 22 Jul 2022 15:06:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229441AbiGVNGm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jul 2022 09:06:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234548AbiGVNGl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jul 2022 09:06:41 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 98E781140
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 06:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1658495197;
        h=from:from:reply-to:reply-to:subject:subject:date:date:
         message-id:message-id:to:to:cc:cc:mime-version:mime-version:
         content-type:content-type:  content-transfer-encoding:content-transfer-encoding;
        bh=KRAIBJvdRdM4mGqwYX7uPMuucWU5ZZ09WtgB4J0EI9A=;
        b=hRj1LHVb1XoElqQfe3jxszTZqRba7WLAMuxtB9t4yTopjwJV8U+Vo1K50J9LXVLNLXl2aD
        81R4yf9cZv16uZZvnHjnOxvWQXslkXvfyy1clPx/7GMpfCXgPeL+YM//yCKUOtDl1wv+z4
        70HIJwRv5K1h/dSepDwpdFdiAxvzyo0=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-662-tXdrYkdGP-aShkdWyNKgrA-1; Fri, 22 Jul 2022 09:06:36 -0400
X-MC-Unique: tXdrYkdGP-aShkdWyNKgrA-1
Received: by mail-wm1-f70.google.com with SMTP id x17-20020a05600c21d100b003a32dda6577so1845422wmj.7
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 06:06:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
         :organization:user-agent:mime-version:content-transfer-encoding;
        bh=KRAIBJvdRdM4mGqwYX7uPMuucWU5ZZ09WtgB4J0EI9A=;
        b=rXkY72hj246v8rLbN+gzcDkut/qDabFW2SeghAFLUQTVUoYIRZ5Bq1XGZvrhGmeTB+
         llx2e+pkG19LHXyw/YdwRP1PLMrEn0kYLsNfKai2c1C4TB7WYvDP2rVengKVrguNHWPz
         buUDwFjT++xu7jeuDm1cneSNeKe7AeeDRT4/CR1lnCbX8V/I98hcWdcoo38rpPHGjxys
         ll5TVWOUsTT974iL96mhkQq8/Wz59688wvF0aTHcJl2mB/eMEdqWLIuGDnkmYW/iTcfQ
         rptjDdZbahFNQc6bBSTZxjmuxqH4XUa7/9hMwF5eTELlTioPg2HBLSI/P0cv96jZ/tVb
         xcUQ==
X-Gm-Message-State: AJIora89nA24QZMIqA2fYikr0Vhbhj+hbTJ7V9Y43ouiZX4PY4SO/vN6
        rVZ7gmz3MrOuVCJ1WKSnebGenTDqwaOUVEZ6e4TbX3qYHIXOfOIkY7iPQofOw9P2n3zg8oCjB+7
        QvPhhDiTastmwNAdDOkai
X-Received: by 2002:a5d:4f8f:0:b0:21e:4f09:9e15 with SMTP id d15-20020a5d4f8f000000b0021e4f099e15mr314180wru.55.1658495195342;
        Fri, 22 Jul 2022 06:06:35 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1uZ6Etvc59FtwiHumHGBw+zJd8hkqyDpVkWaKwY/MKImCWqOIBOvah4NB+vVXEYsmUvhexiNQ==
X-Received: by 2002:a5d:4f8f:0:b0:21e:4f09:9e15 with SMTP id d15-20020a5d4f8f000000b0021e4f099e15mr314148wru.55.1658495194972;
        Fri, 22 Jul 2022 06:06:34 -0700 (PDT)
Received: from ?IPv6:2001:470:5bd4:dead:e33d:dc07:2b0c:d9a9? ([2001:470:5bd4:dead:e33d:dc07:2b0c:d9a9])
        by smtp.gmail.com with ESMTPSA id r5-20020a1c2b05000000b003a03be171b1sm5053918wmr.43.2022.07.22.06.06.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Jul 2022 06:06:34 -0700 (PDT)
Message-ID: <920642e4bc7b60c19962187b266dfc0ee4ac7f27.camel@redhat.com>
Subject: [PATCH] nsswitch.conf.5: Mention subid database
From:   Nikola =?ISO-8859-1?Q?Forr=F3?= <nforro@redhat.com>
Reply-To: nforro@redhat.com
To:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Date:   Fri, 22 Jul 2022 15:06:33 +0200
Organization: Red Hat
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

shadow-utils use nsswitch.conf for configuring delegation of subordinate
uids/gids.

Reference:
https://github.com/shadow-maint/shadow/blob/3ec32f9975f262073f8fbdecd2bfaee4a1d3db48/lib/nss.c

and subuid.5/subgid.5 man pages.

Signed-off-by: Nikola Forró <nforro@redhat.com>
---
 man5/nsswitch.conf.5 | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man5/nsswitch.conf.5 b/man5/nsswitch.conf.5
index 144977d2b..56450b7f8 100644
--- a/man5/nsswitch.conf.5
+++ b/man5/nsswitch.conf.5
@@ -91,6 +91,14 @@ For example,
 consults the
 .B sudoers
 database.
+Delegation of subordinate user/group IDs
+can be configured using the
+.B subid
+database. Refer to
+.BR subuid (5)
+and
+.BR subgid (5)
+for more details.
 .PP
 Here is an example
 .I /etc/nsswitch.conf
-- 
2.35.3

