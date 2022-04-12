Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C33F04FE459
	for <lists+linux-man@lfdr.de>; Tue, 12 Apr 2022 17:10:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356921AbiDLPM4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 12 Apr 2022 11:12:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356873AbiDLPMl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 12 Apr 2022 11:12:41 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 65E715D64D
        for <linux-man@vger.kernel.org>; Tue, 12 Apr 2022 08:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649776222;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=MQJFKydBOcL8kyscA3D9ozwBEjZI33wnkIpCVccZuMM=;
        b=CGBF7ConVfBmp5U0Vat3drgjo4eiXdkR7tYMUDRT4rN+X1e6xPG9ZIlS/gWrpqwAwllrFp
        Yp6MkQ+30F5iIG5Imc2vM8nSGie6oh4TRSNtrNZEnv2+q4MfAi/g+f9plUNkuY5Diq8E8R
        v5Mb/pL4y/vcmhiF54qIUQAAbfLN4oU=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-577-BlqrGTurNVCkBHt3jRvZ_Q-1; Tue, 12 Apr 2022 11:10:21 -0400
X-MC-Unique: BlqrGTurNVCkBHt3jRvZ_Q-1
Received: by mail-ed1-f72.google.com with SMTP id cm1-20020a0564020c8100b0041d6b9cf07eso5827294edb.14
        for <linux-man@vger.kernel.org>; Tue, 12 Apr 2022 08:10:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MQJFKydBOcL8kyscA3D9ozwBEjZI33wnkIpCVccZuMM=;
        b=waf7SHX7f0GryhrqIvzW1KsigVlX5Xmqepd3KzbC3eIY2ULgWg/TeaGEBA3Jyn+5Lp
         lSjaST4UM3dlalyXVfs4h0vajfpfVu0+4RblUKyFDdreVwVWf7AUyJvIWIAXxhvfWVgw
         wQ6vApu0hzpdwyO5iUXyq+cHfdoCumcVQTSLqy+zirxOmZNiG/yJHkAxSsogWA1kVp9A
         XMi7+95MTw5V8sXXHfchNshlfY4uI75A7Slg92YOkqEKtd6oHi++NzLZDZMj/us7V7yd
         Tk4ygDE6bqfLh6233wzaZlkXVxCdIpmNW/l7qLvrFtOneYGyybTkI2ETKW8s8nPu23Q5
         DKJQ==
X-Gm-Message-State: AOAM533U5R5cQ8/lTZZ/aBC4LlxNAn2ZXKw9r6QwGpVVKZ6ple0IaaZH
        Bzd3D/ptBYHOICMswMAEN4I1Gq1Z5nLzclYJuuEyiLwmDbvxQ75SoWElnzyPmvv8E4CdrJEGHQc
        r9oUDi/uQhko+OLifdP1II/Y2u7/MfmcxakhJ
X-Received: by 2002:a05:6402:1107:b0:416:439a:6a9e with SMTP id u7-20020a056402110700b00416439a6a9emr38813930edv.382.1649776220071;
        Tue, 12 Apr 2022 08:10:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyMDMbbWzW7FmPlAoCEVdThRC0cxKxesfphBI0Gon9mW4l8zYY0Lk+lUkZt0snZCPAsuSsdKlDFPtAuwAcImxM=
X-Received: by 2002:a05:6402:1107:b0:416:439a:6a9e with SMTP id
 u7-20020a056402110700b00416439a6a9emr38813907edv.382.1649776219897; Tue, 12
 Apr 2022 08:10:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220412135520.2388424-1-arjun@redhat.com> <87sfqi5q6r.fsf@oldenburg.str.redhat.com>
In-Reply-To: <87sfqi5q6r.fsf@oldenburg.str.redhat.com>
From:   Arjun Shankar <arjun@redhat.com>
Date:   Tue, 12 Apr 2022 17:10:08 +0200
Message-ID: <CAG_osabk2iRQO4JLK7u5jLCj59qj15iFr+ZP3_iX12C4D=roHg@mail.gmail.com>
Subject: Re: [PATCH] pthread_atfork.3: Remove a confusing reference to the
 current thread
To:     Florian Weimer <fweimer@redhat.com>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> I suspect the intent was to indicate that the handlers are called on the
> thread calling fork, but that's probably clear enough from the context?

Yes, that could have been the intent. It is also mentioned separately
in the second sentence, so that information will not be lost if this
change gets applied.

