Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89C924F06A1
	for <lists+linux-man@lfdr.de>; Sun,  3 Apr 2022 01:05:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230094AbiDBXHL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Apr 2022 19:07:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230072AbiDBXHL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Apr 2022 19:07:11 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B8CCD62
        for <linux-man@vger.kernel.org>; Sat,  2 Apr 2022 16:05:18 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id c11so5230950pgu.11
        for <linux-man@vger.kernel.org>; Sat, 02 Apr 2022 16:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:content-transfer-encoding;
        bh=fIYNCuhzT34V+UpV/VdvsE9mtZE7A6r6Cr7uJJOqDJA=;
        b=kT1H/g28qTSTcP4Nc9BHpGzKV017VZJSGU4kaMBmbLDqLn6cQR7Y+LMUy8VdEgcTHh
         fjwFARBvNCgQnHKL/RHB5ENmceFIQNPWm6/NbPI0AmohXW2KlJMSkeKM0rG43zMXzt4h
         EGwVwEN9zvkyNfaGJrEC6SCTTzCMHaCfl/BEtl9voTwec4F0A3MM0jEWXkiBO/SP3Lu4
         BIUSUVRdL8qbFxgTBWz7G2fSAbEtu8sBg61uJv68u4/WrhaxfkEGzBwJzwqNPxZhf9ME
         teByBjZDKxNkROWxn6/9Km0YSfvDyrd8dUYgPfhgNnc3o8w+9OCvV0JaU7oTD25KqWME
         obHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:organization:mime-version:content-transfer-encoding;
        bh=fIYNCuhzT34V+UpV/VdvsE9mtZE7A6r6Cr7uJJOqDJA=;
        b=IxKtxChIAUTkiaLeB4VyIW3Rv3lwjXSJP4htlQL3tAW4VKQl5mlIP5b2ldj2z9z5ms
         tVufJhGslab6GhxzoVPj99aMdzvaR8+IpkBHuthCQ1BFM8jumOV8OW8nw8R+uQrjYBBh
         6kvplKqxngxEMmsQK32MDsSUqYXhlJwIIYhVPc08cLgBdCzBynyTCnuqctKpZ657wnCh
         kphhj6KlXN7wYotjpYgsfaTvygaTpuLqYgcd2c1E8DvaHDvvPWbZHAWxe8fYSpDWW53H
         BM6mdCxPDaCABfv7lObpWzgjK1ljprdJ5KStOF7DNpeQngZ3cij4AQE+/WFMcXnCVxJF
         kwOw==
X-Gm-Message-State: AOAM533p2b6xJ+gfCOo7xmeP8cweORo7Dz37zRy2AL5FUz3V/BRR48PU
        vSYeyqRTcDHPfzWWu5WenmM=
X-Google-Smtp-Source: ABdhPJxwHbtikHzGInxN2ZIhY5ul3wQskorslpLPxgPd1aou99/6lRyzLUuOCPqUjSyzJrngrlq6Vg==
X-Received: by 2002:a05:6a00:1a10:b0:4fc:d6c5:f3ed with SMTP id g16-20020a056a001a1000b004fcd6c5f3edmr25070725pfv.85.1648940717986;
        Sat, 02 Apr 2022 16:05:17 -0700 (PDT)
Received: from optimus ([2405:204:90a8:f924:668e:8e0d:eb54:9060])
        by smtp.gmail.com with ESMTPSA id oo16-20020a17090b1c9000b001b89e05e2b2sm6349557pjb.34.2022.04.02.16.05.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Apr 2022 16:05:17 -0700 (PDT)
Date:   Sun, 3 Apr 2022 04:35:08 +0530
From:   Avinash Sonawane <rootkea@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Functions missing from missing_pages.html
Message-ID: <20220403043508.42c59a5e@optimus>
In-Reply-To: <1148e5eb-a308-eb57-e8ad-dcbf5709eb72@gmail.com>
References: <20220331220454.6474e671@optimus>
        <1148e5eb-a308-eb57-e8ad-dcbf5709eb72@gmail.com>
Organization: Hacker's Den
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, 2 Apr 2022 23:24:02 +0200
"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com> wrote:
 
> Fixed with the patch below.

Cool!

Is the webpage https://www.kernel.org/doc/man-pages/missing_pages.html
generated from undocumented(3) manpage or does it also need to be
updated separately?

I still can't see the changes reflected on that webpage...

Regards,
Avinash Sonawane (rootKea)
https://www.rootkea.me
