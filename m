Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9FB86AA939
	for <lists+linux-man@lfdr.de>; Sat,  4 Mar 2023 11:45:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229506AbjCDKpe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 Mar 2023 05:45:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjCDKpd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 Mar 2023 05:45:33 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7E02FF1D
        for <linux-man@vger.kernel.org>; Sat,  4 Mar 2023 02:44:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1677926685;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type;
        bh=fjZhi3zImNKx+DEjqiZSY79mOCIOjE67BdHpS4VVDCQ=;
        b=ToFs1nTKR16XxsXOUoLSDglJrrp1bpRnfiUtp57jZiGEyutk6wUlGNU7I6yYcsqX6QoHno
        Si9tFDjwvtYR/EqqOVSs0qSYfOJq0QWXpkQx3J0QtmOfrvUx50fl+uGsJnv13ewvywRm6a
        1bTDyjFMc8YVRXGLUwQ7mgNepVnzNXk=
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com
 [209.85.219.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-477-uy2WxSBzMmOTmLp5nnYUQQ-1; Sat, 04 Mar 2023 05:44:43 -0500
X-MC-Unique: uy2WxSBzMmOTmLp5nnYUQQ-1
Received: by mail-yb1-f198.google.com with SMTP id k6-20020a25e806000000b00a623fca0d0aso5242055ybd.16
        for <linux-man@vger.kernel.org>; Sat, 04 Mar 2023 02:44:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fjZhi3zImNKx+DEjqiZSY79mOCIOjE67BdHpS4VVDCQ=;
        b=MVTnJFjdXgyGtazqHZtZTEn3Bojscn7649pMKfADrzZa9Md+pXTHFHmGMqVd1FL2+a
         f3jW0DgcIPRINL6ot3JrQwXKf0U5htvn+tlGMs2scVSZGpHVbNIy/32QrYjTz5GWyHIc
         DwWq//EWrx1xGV8hiXx/oKK21MSjCpHXYsQOe03mo2GNvDCNUqMojMxDOVT30p3J4UYn
         UBwfBB0NTzlyWVzjJJ2Ys7TfSBdsE4kdDKwiB+Q/OTEaihlj4UiE656UUn+dNsNo+Nbw
         AxvhmbT6V9divCltjDlpL4/SC8rLsL3a9liud5IANDxNniBU/VJsN+x/Bx8X6N/e/sh9
         aAgQ==
X-Gm-Message-State: AO0yUKXrXcO7JDrKFgQZeGdKRDEYtH553p92+icYFaYGoBjdYVVkvcQk
        sERO60d/RDFfrgrr7toVCP3nHED6AbkMLajG/3qh6opFPfSz+PGSaWvJQleg4p40uqYycj0yN64
        N/WSPrkiMxfVeE1EC2GxDdJ6MmajZ2V3tW0hrPUvPJ9uJNoE=
X-Received: by 2002:a81:ae1d:0:b0:52f:23f5:4079 with SMTP id m29-20020a81ae1d000000b0052f23f54079mr2886510ywh.4.1677926682769;
        Sat, 04 Mar 2023 02:44:42 -0800 (PST)
X-Google-Smtp-Source: AK7set+qb3LL5BGaVE1vpUblIk4neAzb3xkEnWgbquehaamGPm8WguQaj3Q1DX2zXbJvddu9eEFF8p4TaLyKRmNnU2Y=
X-Received: by 2002:a81:ae1d:0:b0:52f:23f5:4079 with SMTP id
 m29-20020a81ae1d000000b0052f23f54079mr2886498ywh.4.1677926682452; Sat, 04 Mar
 2023 02:44:42 -0800 (PST)
MIME-Version: 1.0
From:   Simon de Vlieger <supakeen@redhat.com>
Date:   Sat, 4 Mar 2023 11:44:26 +0100
Message-ID: <CA+1XnJvzNVS9BbFb6xcDhJSch3Z+xZsmYwoHM-Pd_LRddk97cg@mail.gmail.com>
Subject: string_copying.7 UB in reference implementation stpecpy
To:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

I recently stumbled upon the `string_copying.7` manpage and while
reading it found some issues.

Specifically the implementation of stpecpy has the following code:

if(src[strlen(src)] != '\0') raise(SIGSEGV);

By definition a string in C is null-terminated. Calling strlen on
something not-a-string is undefined behaviour. It seems that this is
undefined behaviour to catch undefined behaviour?

Aside: gcc 12 compiles away the above on higher optimization levels.

Kind regards,

Simon de Vlieger

