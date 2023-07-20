Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A130E75B34E
	for <lists+linux-man@lfdr.de>; Thu, 20 Jul 2023 17:45:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232876AbjGTPpS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Jul 2023 11:45:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232907AbjGTPpR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Jul 2023 11:45:17 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B58C1CE
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 08:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1689867869;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=kTYDopqFkPXwhgXniT2dnU1OW8PznJPEzsuPwOjJI0g=;
        b=f9AL6XX3Nh99eE/SEQhoRW1bZgOCml9tVGgB38vmvVAINJ/9eC4due6ny5b1gxVM58iaxh
        LB1REjipXHHnrn36Lg4Yhjl4KvuZkaTKYXA47Bx/qSZUoUn+kawSO9ubHnCSJ7a37urOgr
        k1ijWZyn5uAstmaGayEdOUbve6iiv/I=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-600-5JgDASbBN7C097sqVaefYw-1; Thu, 20 Jul 2023 11:40:42 -0400
X-MC-Unique: 5JgDASbBN7C097sqVaefYw-1
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-94a355c9028so68196766b.3
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 08:40:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689867619; x=1690472419;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kTYDopqFkPXwhgXniT2dnU1OW8PznJPEzsuPwOjJI0g=;
        b=Mn4ip4+LbvAWHhomKH3DIwcKVAFQU5RfJiQiixqcpUWWuReEojltU/XZWhBHQB/6J+
         8huVYb3LDM9iPoEynqofsssc1OOl/QThTOny0TJ12IilQpWUcJzAC9tKS1o+iT6wGjMg
         WopWSweNijTE1S/eCfaOMsWSY9VGxdoiIXveofyeUI6fCGEQy1WIvlA4Q5h0igfJfV4u
         tcQRmv2fjOiu6d+PHvrsfPZuQuPDSozjB2yppKGSR8aoMglb5YWVguOFPgm6ITvLK4IZ
         XJ3a33lgbQyr0gX/rHEblv5fhqpsmT/ceVdw9Hj9YGBV+kOtqoWQ+9E1wvG/Nk6K3AQV
         N6cg==
X-Gm-Message-State: ABy/qLYjpSwseuAzC837sCZEwilnTpar+Ys71HkqGNlaBZrf6b6TTu7u
        HS/fdtHKcJq8G3C7C2nT/GVhO3/EBiWZvGNwJjtpuospFIDNrgFWSD8oFu9SmK18XMOMQ7RXysF
        ZkMr5x65bnnmaKYZwEJ9YbT7mEYSE
X-Received: by 2002:a17:907:2bcf:b0:98f:3485:9c44 with SMTP id gv15-20020a1709072bcf00b0098f34859c44mr4935709ejc.72.1689867619201;
        Thu, 20 Jul 2023 08:40:19 -0700 (PDT)
X-Google-Smtp-Source: APBJJlGxsJyOwI4UT8xS3KlxJFtpk/PESPZI4WuqdmCzOFkysFZDkqAk6WglP3f5cZyHQJQSSaZ+Ww==
X-Received: by 2002:a17:907:2bcf:b0:98f:3485:9c44 with SMTP id gv15-20020a1709072bcf00b0098f34859c44mr4935697ejc.72.1689867618959;
        Thu, 20 Jul 2023 08:40:18 -0700 (PDT)
Received: from cremorrah (ip-86-49-233-183.bb.vodafone.cz. [86.49.233.183])
        by smtp.gmail.com with ESMTPSA id u15-20020a170906124f00b009887c9b2812sm872385eja.8.2023.07.20.08.40.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 08:40:18 -0700 (PDT)
Date:   Thu, 20 Jul 2023 17:40:15 +0200
From:   =?utf-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
Subject: Re: [PATCH v4] abort: clarify consequences of calling abort
Message-ID: <ZLlVX-HPL1PS6RXL@cremorrah>
References: <5c8c0d88151e70a69c8613ad87c4441472d3ad95.1689867426.git.tgolembi@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="czo6hdGj9NevAfZr"
Content-Disposition: inline
In-Reply-To: <5c8c0d88151e70a69c8613ad87c4441472d3ad95.1689867426.git.tgolembi@redhat.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--czo6hdGj9NevAfZr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

attached is a small test program. Compile simply with:

    $ gcc atexit.c -o atexit

When running the test I get:

    $ ./atexit 
    terminating
    on_exit called
    atexit called

When the abort() call is uncommented I get:

    $ ./atexit 
    terminating
    Aborted (core dumped)

Hope this helps,

    Tomas

--czo6hdGj9NevAfZr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="atexit.c"

#define _DEFAULT_SOURCE

#include <stdio.h>
#include <stdlib.h>

void one(void) {
    puts("atexit called");
}

void two(int, void*) {
    puts("on_exit called");
}

int main(void) {
    atexit(one);
    on_exit(two, NULL);

    puts("terminating");
    //abort();
    exit (EXIT_SUCCESS);
}

--czo6hdGj9NevAfZr--

