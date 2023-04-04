Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9FC36D5946
	for <lists+linux-man@lfdr.de>; Tue,  4 Apr 2023 09:17:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233385AbjDDHRH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Apr 2023 03:17:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233345AbjDDHRH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Apr 2023 03:17:07 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06C691FE2
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 00:17:06 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id t10so126469239edd.12
        for <linux-man@vger.kernel.org>; Tue, 04 Apr 2023 00:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680592624;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=M4ZK2ylQMqWKQhNpYt1WDz69+e7aXJsn0s2n5Bec6qo=;
        b=dBEMz6TOWqfC+cE47blWGfqibJtfiC4t6ExeT3k2TWYJ8C61v9PVOZD8GpcFWDY4TZ
         yS/ipBpW5W1DtCDYd0gMT6yGLJzvDWX6vZOxOLV59e2MrLE4CkkbNUjZfajTnie/vYEG
         2oy/FTPsSdFl43jNQv0cT0/aXcNfo4PrRH4Jz0kM/mWd/oO9FWEieOpnkawd/vSj/Sg7
         wJHJ1OVfUPcU54VttR/8lnVFehq7l+yMgFlWBMOYSObBwyEMhYcdIttM+WeNpb61pGxt
         bFeCJNnzlfYha77SifPXLFdqjzCKLPBdgSr0o+Q0hjqaSNJ+MOKAEYIgdmh29sHzLhhK
         U5GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680592624;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M4ZK2ylQMqWKQhNpYt1WDz69+e7aXJsn0s2n5Bec6qo=;
        b=hQf8rUlaqcFpvBW5qyDKcSF+hH1+LO7YLWyBKBjL1k9ZUPC1eeS+SOlXY8U4RlEjAb
         IMOAjQWy93HUdCvUesrt0DjQP9wZiGPXjzYvrCdbrw0NlMB9tpNQGG3lcmW2YOUMgxoS
         xyzh+ZadJrGV6a3nAbcSbhLaudKl5W/4xAyqzzSRGjtH28wYaTCq8QjVD6pGB0lk9LTq
         YM7Pan/RdFNonw6vHTXxmz4+0rn/2i7E+NtBl2pvLe/BtA2y2rloMm1BwLZd1OzWriQM
         uVmtFF4+kRaLjuGf4xq5tuOn31dHuIAZqtCAQcj87cwZBGFyomVZvWTVgRIubVd7BDRC
         E9pA==
X-Gm-Message-State: AAQBX9fv72xJHKRHpZTIqM3TuEjhupkGNDKz74NIFUpHqad05JD/aKYP
        IBqvjiCRhVUONAmJZLoSD/s=
X-Google-Smtp-Source: AKy350bG1wksdbRlamH5gBtI+cL5CsxunfCWRQfIpjpx2OCf6gzEHOphgJHEJNzKUmdRmze3AFJxkA==
X-Received: by 2002:a05:6402:8d8:b0:4af:63a7:7474 with SMTP id d24-20020a05640208d800b004af63a77474mr1377366edz.17.1680592624260;
        Tue, 04 Apr 2023 00:17:04 -0700 (PDT)
Received: from localhost (p200300f87f3c28814890d3c71c5b6643.dip0.t-ipconnect.de. [2003:f8:7f3c:2881:4890:d3c7:1c5b:6643])
        by smtp.gmail.com with ESMTPSA id i24-20020a508718000000b005024aff3bb5sm5454616edb.80.2023.04.04.00.17.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 00:17:03 -0700 (PDT)
Date:   Tue, 4 Apr 2023 09:17:02 +0200
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v5 3/3] landlock.7: Explain the best-effort fallback
 mechanism in the example
Message-ID: <20230404.5170783fb1a3@gnoack.org>
References: <20230324172419.117632-1-gnoack3000@gmail.com>
 <20230324172419.117632-3-gnoack3000@gmail.com>
 <a5daa228-284e-12d3-cd5b-28611830e21b@gmail.com>
 <20230401.1316d7f843d7@gnoack.org>
 <d3d98ac0-735f-c5bc-c060-2cd510271c0c@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d3d98ac0-735f-c5bc-c060-2cd510271c0c@gmail.com>
X-Spam-Status: No, score=0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Apr 02, 2023 at 03:21:56AM +0200, Alejandro Colomar wrote:
> On 4/1/23 19:19, Günther Noack wrote:
> > Hello Alejandro!
> > 
> > On Sat, Apr 01, 2023 at 12:29:35AM +0200, Alejandro Colomar wrote:
> >>> +.RB ( LANDLOCK_ACCESS_FS_REFER ),
> >>> +we would require the following change to the backwards compatibility logic:
> >>> +Directory reparenting is not possible in a process restricted with Landlock ABI version 1.
> > 
> > Fixed it on this line too.
> 
> BTW, I forgot to tell you that you can check this yourself in future
> man-pages patches following the ./CONTRIBUTING file instructions for
> linting and checking patches.  You might find this useful.  See:
> 
> 
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUTING#n132>
> ...

Thank you for pointing this out (and for reworking this
documentation)!  I had indeed missed the CONTRIBUTING doc.
The "make -t" trick is also new to me.

–Günther
