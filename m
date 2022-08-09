Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A348A58DC9D
	for <lists+linux-man@lfdr.de>; Tue,  9 Aug 2022 18:59:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244966AbiHIQ7A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Aug 2022 12:59:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243719AbiHIQ67 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Aug 2022 12:58:59 -0400
Received: from mail-oo1-xc64.google.com (mail-oo1-xc64.google.com [IPv6:2607:f8b0:4864:20::c64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B987623BEF
        for <linux-man@vger.kernel.org>; Tue,  9 Aug 2022 09:58:58 -0700 (PDT)
Received: by mail-oo1-xc64.google.com with SMTP id u7-20020a4a8c07000000b00435ac1584a6so2214157ooj.1
        for <linux-man@vger.kernel.org>; Tue, 09 Aug 2022 09:58:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:x-gm-message-state:from:to:cc;
        bh=+eQHMMdBs5N/rufefflqkz3jznRwu+OTj00XN5Kl+E4=;
        b=X7PvOJrqe06TPH/x1aDMDl6lo8eSfcRISAlRr2xc2U4/QTppFNnM7d3/tkFSvT2QTQ
         rm6MmuN330YQryPN80dFH+xVfihuDG3Svh61HWvJTaEogd0iPeT+RrvXm24W1ct/l+iH
         zH69Y8Xt/ET7CYPIFID0u9Bao1atJHWh4ApLoQNOEc3kUF8aKx10rrvJBrdIElx5iGm2
         1nqnV37wjBIT8t81FE5Eq0QhtpfG0Nh7CNcr0Te/2NtW/AI+5uPH+AMGq4l1+KrJ5cfO
         cW/5wNdSo0wcHltRiKbFdQgYzDRjH9hwDivywdaBd+2V3/DUB7Sdh7bB3sP+KltUS1O1
         gSCQ==
X-Gm-Message-State: ACgBeo261PXtJcEumDMjVf7+3jh8R2nUn2rp03XAf5rykAdXPELl7r35
        gjOEzA1H2dno9NcpMHzW1NyMaFt8TaMSxuPjE1zkcxA3iiffKA==
X-Google-Smtp-Source: AA6agR6b0yAmnOJTInFcqtfH4hRfvrzlH1te1rvOiBvsIs/uHG+0W2Sw5X3B9QHEg557d3CewK2XUYhjG9mi
X-Received: by 2002:a4a:8e54:0:b0:435:76f2:2ab7 with SMTP id z20-20020a4a8e54000000b0043576f22ab7mr8363386ook.60.1660064338156;
        Tue, 09 Aug 2022 09:58:58 -0700 (PDT)
Received: from restore.menlosecurity.com ([13.56.32.54])
        by smtp-relay.gmail.com with ESMTPS id q3-20020a056870e60300b00100feb13b78sm1677257oag.3.2022.08.09.09.58.57
        for <linux-man@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Aug 2022 09:58:58 -0700 (PDT)
X-Relaying-Domain: menlosecurity.com
Received: from safemail-prod-02850030cr-re.menlosecurity.com (13.56.32.55)
    by restore.menlosecurity.com (13.56.32.54)
    with SMTP id 8ec9d080-1804-11ed-ae78-573a90385d8c;
    Tue, 09 Aug 2022 16:58:58 GMT
Received: from mail-yw1-f197.google.com (209.85.128.197)
    by safemail-prod-02850030cr-re.menlosecurity.com (13.56.32.55)
    with SMTP id 8ec9d080-1804-11ed-ae78-573a90385d8c;
    Tue, 09 Aug 2022 16:58:57 GMT
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-31f5960500bso105177187b3.14
        for <linux-man@vger.kernel.org>; Tue, 09 Aug 2022 09:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=menlosecurity.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=+eQHMMdBs5N/rufefflqkz3jznRwu+OTj00XN5Kl+E4=;
        b=DtLNgYbv/NpgFpqLo3b18NO8nc9YTIXSqrKxUY2P/0I4vEAC8PI8L3UUG7M+ONiNEV
         iK+x2qBi3NbwJDQ0Ar4lpGYX0752sqUpgGPb0bD01DpA5Ze+gPeBEye9XcNIAPPHi+fJ
         KZHQbxzGxor1fqxdzyZo2dNkzmjrdJAHHbG+U=
X-Received: by 2002:a81:8886:0:b0:31f:639:8b97 with SMTP id y128-20020a818886000000b0031f06398b97mr23879940ywf.192.1660064336450;
        Tue, 09 Aug 2022 09:58:56 -0700 (PDT)
X-Received: by 2002:a81:8886:0:b0:31f:639:8b97 with SMTP id
 y128-20020a818886000000b0031f06398b97mr23879929ywf.192.1660064336308; Tue, 09
 Aug 2022 09:58:56 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FoirA6PSOztihqrvOTVRKiSR8KnqiiZM-Tj9jVZjur3cia4w@mail.gmail.com>
In-Reply-To: <CA+FoirA6PSOztihqrvOTVRKiSR8KnqiiZM-Tj9jVZjur3cia4w@mail.gmail.com>
From:   Rumen Telbizov <rumen.telbizov@menlosecurity.com>
Date:   Tue, 9 Aug 2022 09:58:45 -0700
Message-ID: <CA+FoirDEkxx5=LJbkrxSbieEbN__3kk5KnSuFooeff+hUo8cCw@mail.gmail.com>
Subject: Re: man7.org update
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Quentin Monnet <quentin@isovalent.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro, list,

In short: Quentin and I were wondering if you know who maintains and updates
https://man7.org/linux/man-pages/man7/bpf-helpers.7.html

This is with regards to the changes that we talked about previously to
the bpf-helpers man page and the script that needs to be run in order
to update the man page. Those changes don't seem to be reflected in
the link above. Assuming that the script has been run already and all
the changes are in place, do you have any idea when/who updates this
page to reflect that?

Thanks,
Rumen Telbizov
