Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA7B9633CFE
	for <lists+linux-man@lfdr.de>; Tue, 22 Nov 2022 13:59:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229505AbiKVM7x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Nov 2022 07:59:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232252AbiKVM7v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Nov 2022 07:59:51 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2A181A06B
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 04:58:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1669121933;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=RKNYdWkP2yhky1GIfiaBCnio04g8wdvrXzY8KAQUTB8=;
        b=LYrGfmVGW1rj/X5kGiGKoX7W1gJdmkjoZsPBzix/faHI86totIE6oTndSnS/5FJi9x4nw3
        GvqtEp8fjH94/UIPUWYFaV+0ziR3U//kPgfFtuCep3MbjV4nUgiWctoqUkeJtSvVMH/mPF
        3TdZqUHVz9rU8XwfsrX8gBLMTldw1N0=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-136-6hKOjSG7P4ekoe42wL8B8Q-1; Tue, 22 Nov 2022 07:58:51 -0500
X-MC-Unique: 6hKOjSG7P4ekoe42wL8B8Q-1
Received: by mail-ej1-f71.google.com with SMTP id hr21-20020a1709073f9500b007b29ccd1228so8195884ejc.16
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 04:58:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RKNYdWkP2yhky1GIfiaBCnio04g8wdvrXzY8KAQUTB8=;
        b=Obx9R/BW+8s4rrzYx0Fwu4GA7gF3OT8lnXaJz7w4PnQLlMrbCr00ek5lKM249okySt
         LMfbNRymateVxMAHhNnGrK8vU8hci//KtcChYVXoUKOjfetnRDQKFJL91Lw/QuMblEc2
         MwFBgwNDMIJ1ouebdph0OaGKk7R/E9VbGAAvbs10FT6+8Sm6XOqRUREqJqeuji8TE3eU
         SeiLlMqJgVWuYl963rtvZRMHrQwwIj+9aVG6x9x6Gkwl4N9SdLWHTRsGBHSoJKvlx7sZ
         rREgpIJvSf34C5bkJAtYAPqotWRPpoHDN9csbmay8vhV2nKhyYuttzyN6IsH+kwRO8L8
         2bJA==
X-Gm-Message-State: ANoB5pkoePbWCmXqqpckk2yDbvpmRXGFdK98Oqvci6T61eeHBOlHssIB
        i0PTK5oXt232GpYMCLbtfPIFrOdVaqHAXJIukbyEAj2zZXLXnIscZKekfg95fsa22X4ppmXaUFp
        fDNJQ427H7Ymh8bNQ770Ikr3jv3SQKJuWg1ds
X-Received: by 2002:a05:6402:882:b0:469:7893:4b5a with SMTP id e2-20020a056402088200b0046978934b5amr10434091edy.328.1669121930216;
        Tue, 22 Nov 2022 04:58:50 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5kZcZLnSY++i8EsNIynRGitGyfh1EPkoQmHirHsN/id4kC2QZzRl3Ok7QDIa4aSu/wY225FtwWIZ4/07vBbiE=
X-Received: by 2002:a05:6402:882:b0:469:7893:4b5a with SMTP id
 e2-20020a056402088200b0046978934b5amr10434078edy.328.1669121929981; Tue, 22
 Nov 2022 04:58:49 -0800 (PST)
MIME-Version: 1.0
From:   Jonathan Wakely <jwakely@redhat.com>
Date:   Tue, 22 Nov 2022 12:58:39 +0000
Message-ID: <CACb0b4=Qs4oQ6LWxOveU2cc=eNzrqT7dg=cQsg41vGF84=9LiA@mail.gmail.com>
Subject: Garbled text in zic(8) man page
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
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

The description of the RULES field of a Zone line at:
https://man7.org/linux/man-pages/man8/zic.8.html#FILES
seems garbled:
"giving of the amount of time to be added to local standard time effect"

It looks like it might be a copy&paste error from the similar text for
the SAVE field of a Rule line. I think the first "of" and the "effect"
should be removed, but I'm not sure if that's correct.

