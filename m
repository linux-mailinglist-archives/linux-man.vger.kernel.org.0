Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D25A633D0B
	for <lists+linux-man@lfdr.de>; Tue, 22 Nov 2022 14:02:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232252AbiKVNCA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Nov 2022 08:02:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233495AbiKVNBu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Nov 2022 08:01:50 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B017462040
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 05:00:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1669122056;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=lTS6wpZvttxUShp5BsAFKj/eq+HfHbmJBdHuX4ACtKs=;
        b=SMRXUXknBZPutN8dpWTP6IE+KW83pQYJNZlTELF+v2zWkKamyHO2GjFkXjo4XOaDYj0RhL
        vaWEfSAS/8hplNCsWzXX47bbTlxNOTBQktnXss/upFrmEiDecxKpj8D/ySOW6tE08YXb9H
        IlMVCQtirVQ1zCUAnWmkvw1rG12TqPM=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-389-l1aW8Ap1O3CHm2GwQSoVgQ-1; Tue, 22 Nov 2022 08:00:55 -0500
X-MC-Unique: l1aW8Ap1O3CHm2GwQSoVgQ-1
Received: by mail-ej1-f69.google.com with SMTP id qw20-20020a1709066a1400b007af13652c92so8349490ejc.20
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 05:00:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lTS6wpZvttxUShp5BsAFKj/eq+HfHbmJBdHuX4ACtKs=;
        b=nbTPfQKDg9WerbcRoUaFa/epQoJ/0iYt79J01+IBVIcRtqT9c2YQE6vMD4+wAz8Jqg
         ku+cfesV1nBbPcYN2SrULmHMngHl37uPeY4YnBfooJloAmNQHr3RRRMB8C4qbCscOyw8
         wBndOwFlAiRzpwNfDNVHPDWMGuB0ZJtORjej3Lo2IpmUqYC/XCioI9ZctdNTGhE3YgFz
         zya0bp4KNrgMlHAe9iymfPWNW/uF3cbUETvWP6GmZw3aEDMTiyVnbRAumvAkrYcLG4fG
         I5Pvh2YsN9aT8MMrA8uWMS1xNNdBDy0KsrZScJWlxYXddDCqmIJ6HkuUqxgdEJFiEphZ
         aPFA==
X-Gm-Message-State: ANoB5pnYHMMzftHQdNoB2EzksAk1vxNZc8fyq+870x5eUY2JWGUa/2ac
        +7yQNcxX8Ff+SrwpnKrtAP0pSKqCTldPOWSgX1j2iuONsHj/ps5wH9E9XwOnsSGHuy62Czju0w6
        oIfvt6n8011etnw6UNxTC8y6hTB7mcokh1Qe9
X-Received: by 2002:a05:6402:2908:b0:469:770e:ef0a with SMTP id ee8-20020a056402290800b00469770eef0amr3852052edb.205.1669122054229;
        Tue, 22 Nov 2022 05:00:54 -0800 (PST)
X-Google-Smtp-Source: AA0mqf7vMpNo62xADjSl/mIHpTgTd0uwcDxzvBXBq6BGUJQtiqg5LwzXX2UDDXrB4A19lGs0BTsAFCsdZETLMj/qz18=
X-Received: by 2002:a05:6402:2908:b0:469:770e:ef0a with SMTP id
 ee8-20020a056402290800b00469770eef0amr3852044edb.205.1669122054099; Tue, 22
 Nov 2022 05:00:54 -0800 (PST)
MIME-Version: 1.0
References: <CACb0b4=Qs4oQ6LWxOveU2cc=eNzrqT7dg=cQsg41vGF84=9LiA@mail.gmail.com>
In-Reply-To: <CACb0b4=Qs4oQ6LWxOveU2cc=eNzrqT7dg=cQsg41vGF84=9LiA@mail.gmail.com>
From:   Jonathan Wakely <jwakely@redhat.com>
Date:   Tue, 22 Nov 2022 13:00:40 +0000
Message-ID: <CACb0b4nsGQzyQ+rQf_SMMdyN1R3WSsc6grfgGUhT+fjgM2QFOg@mail.gmail.com>
Subject: Re: Garbled text in zic(8) man page
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

On Tue, 22 Nov 2022 at 12:58, Jonathan Wakely wrote:
>
> Hi,
>
> The description of the RULES field of a Zone line at:
> https://man7.org/linux/man-pages/man8/zic.8.html#FILES
> seems garbled:
> "giving of the amount of time to be added to local standard time effect"
>
> It looks like it might be a copy&paste error from the similar text for
> the SAVE field of a Rule line. I think the first "of" and the "effect"
> should be removed, but I'm not sure if that's correct.

This was introduced by
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man8/zic.8?id=5355e20f816e1e0af93d6bb80439e86f2d1c7be7
so maybe it should be reported to tzdb upstream instead.

