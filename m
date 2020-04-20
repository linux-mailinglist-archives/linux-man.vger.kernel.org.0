Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C144C1B035F
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 09:51:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725896AbgDTHvz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 03:51:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725773AbgDTHvy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 03:51:54 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 513F1C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:51:54 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id j1so5436050wrt.1
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=b7hwuTIkw44SFcmWrfLtErnHfHvGk4ezIC/aF39KCgQ=;
        b=L10oPUIE5BeSeo8y+JeYLxVDPPqjEpHUZ85anVBhA/kWYQOoobZHCWX80PMnj4x9fP
         urtTbz+znSZ/XSdKRH+2MM1qdPMXC3qsNd5fHhmAuAPF0MkZ8IdomazScEgOuU5knr/d
         utPxPBQybTHXVfELCdME946Err3agrG0KcMFL6blQoZoJ+1CnTKaemZb2h4X6Y8txpKg
         9aPebgONZ6SibpWqK+Y5wgUhj1DIHHcpgIqDWeBFwT3rIxmQRA/NatnjeeHtcjll7Bwz
         C7A2D9u9DfuPOTr1tEsONNoaCNIkwkwaxR6XpQ4NL23jRH4O0VjkOtXyUWzdLTykAZl3
         Wyhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=b7hwuTIkw44SFcmWrfLtErnHfHvGk4ezIC/aF39KCgQ=;
        b=rtMomnRHe4KvFcvWlYeUOCT9skgHp6ePwIWMlq7H0EVklrqTiaYP2D1ikIu4EFXpFr
         hX4Y1tH/Sd9OFQdlgs3wARbwkrRmnzi50X/SkaDXWtG+Sate7RgF8MWLBtKDg5BRgTNT
         IcAmGFxnFc5qttI6V+pOlVqs28ENtXCPpGdMJdm9DbWpydyxsSW4Ir8bLSjfQpiSeSXh
         qVUBDg1XA3IHFljpdckJ43IjKp4PiFUAvo+sHsFMaiubDWqSeNzvdOoi4v8k6Zu49BRJ
         aWqambpoE3mjauMU3XUoD38cg2tY2te6+bX32hbO1UbA8YGXwKeBHRllRmD/nCET1OQL
         fZ6Q==
X-Gm-Message-State: AGi0Pua7nuCn3I+Ns0rWwoughoy6dI8WPvtNfNcTfXFjus+4I7dgk+42
        T5kQSME/KyK4+cUApT4Usr3OXOAH
X-Google-Smtp-Source: APiQypI+2kjkTqTLigp/bhO+B0x12tg6XR53SJdg57y3Owv1wRslBqsmqEiSPoVN31VmXJDcLsPGHQ==
X-Received: by 2002:a5d:4404:: with SMTP id z4mr16989005wrq.316.1587369112744;
        Mon, 20 Apr 2020 00:51:52 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id a9sm237168wmm.38.2020.04.20.00.51.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 00:51:52 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: gethostbyname(3): Mixed brackets
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064803.GA30724@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b58ac405-0d9c-5df6-3b24-9a20f80416ff@gmail.com>
Date:   Mon, 20 Apr 2020 09:51:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064803.GA30724@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> Dear manpages maintainers.
> the manpage-l10n project maintains a large number of translations of
> man pages both from a large variety of sources (including manpages) as
> well for a large variety of target languages.
> 
> During their work translators notice different possible issues in the
> original (english) man pages. Sometiems this is a straightforward
> typo, sometimes a hard to read sentence, sometimes this is a convention
> not held up and sometimes we simply do not understand the original.
> 
> We use several distributions as sources and update regularly (at
> least every 2 month). This means we are fairly recent (some
> distributions like archlinux also update frequently) but might miss
> the latest upstream version once a while, so the error might be
> already fixed. We apologize and ask you to close the issue immediately
> if this should be the case, but given the huge volume of projects and
> the very limited number of volunteers we are not able to double check
> each and every issue.
> 
> Secondly we translators see the manpages in the neutral po format,
> i.e. converted and harmonized, but not the original source (be it man,
> groff, xml or other). So we cannot provide a true patch (where
> possible), but only an approximation which you need to translate into
> your source format.
> 
> Finally the issues I'm reporting have accumulated over time and are
> not always discovered by me, so sometimes my description of the
> problem my be a bit limited - do not hesitate to ask so we can clarify
> them.
> 
> I'm now reporting the errors for your project. As requested, each
> issue is sent in an unique mail for easier tracking on your side. If
> future reports should use another channel, please let me know.
> 
> **
> 
> Second last line: s/(B<nsswitch.conf(5))>/(B<nsswitch.conf(5)>)/
> 
> "The domain name queries carried out by B<gethostbyname>()  and "
> "B<gethostbyaddr>()  rely on the Name Service Switch (B<nsswitch.conf>(5))  "
> "configured sources or a local name server (B<named>(8)).  The default action "
> "is to query the Name Service Switch (B<nsswitch.conf(5))> configured "
> "sources, failing that, a local name server (B<named>(8))."

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
