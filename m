Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C732782100
	for <lists+linux-man@lfdr.de>; Mon, 21 Aug 2023 03:00:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231571AbjHUBAC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Aug 2023 21:00:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230510AbjHUBAB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Aug 2023 21:00:01 -0400
Received: from mail.ljabl.com (mail.ljabl.com [IPv6:2a01:4f8:173:2dd8::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAB8999
        for <linux-man@vger.kernel.org>; Sun, 20 Aug 2023 17:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ljabl.com; s=20220906;
        t=1692579597;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=UQRD3IfrKxcD5pnLTT6yZk9xRJnPw/9Udrtre4ItriI=;
        b=wq8UMKjTRUaBuHvFA1Mwxk5mGyfgYac4UJ5mndG0Iy3vQ51c2hdlpOLavdxwDfTVCF5XXN
        WH18Hsh8SKDD/ZZSFu2n1wJ3dCMqgWN66HRvQUNReD1H/5D3Ge2s+kY7/NGyOB5u/WIAFI
        kgmtb8dbEV6tcZqnbo+yJF29EhcmYpY=
Received: by ljabl.com (OpenSMTPD) with ESMTPSA id e0914adc (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Mon, 21 Aug 2023 00:59:57 +0000 (UTC)
Received: by fluorine.ljabl.com (OpenSMTPD) with ESMTPA id 62fa8035;
        Mon, 21 Aug 2023 02:59:56 +0200 (CEST)
Date:   Mon, 21 Aug 2023 00:59:56 +0000
From:   Lennart Jablonka <humm@ljabl.com>
To:     Alejandro Colomar <alx@kernel.org>, Brian.Inglis@shaw.ca,
        linux-man@vger.kernel.org, groff@gnu.org
Cc:     g.branden.robinson@gmail.com
Subject: Re: '-' vs '\-' in TH (man(7))
Message-ID: <ZOK3DO3QAI2L_IXB@fluorine.ljabl.com>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>, Brian.Inglis@shaw.ca,
        linux-man@vger.kernel.org, groff@gnu.org,
        g.branden.robinson@gmail.com
References: <4e1081d0-1d77-0a00-78bf-5dc40522f428@kernel.org>
 <8204da79-bca6-02b7-a883-6fd77b4f97a5@Shaw.ca>
 <b05dae48-4304-7b87-8b58-a0734fdd2bb9@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b05dae48-4304-7b87-8b58-a0734fdd2bb9@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Quoth Alejandro Colomar:
>$ grep -rn '^\.TH [^ ]*-' man*
>man5/proc_sysrq-trigger.5:7:.TH proc_sysrq-trigger 5 (date) "Linux man-pages (unreleased)"
>man7/man-pages.7:11:.TH man-pages 7 (date) "Linux man-pages (unreleased)"
>man7/iso_8859-10.7:6:.TH ISO_8859-10 7 (date) "Linux man-pages (unreleased)"
>man7/iso_8859-8.7:8:.TH ISO_8859-8 7 (date) "Linux man-pages (unreleased)"
>man7/iso_8859-9.7:6:.TH ISO_8859-9 7 (date) "Linux man-pages (unreleased)"
>man7/rtld-audit.7:8:.TH RTLD-AUDIT 7 (date) "Linux man-pages (unreleased)"
>man7/bpf-helpers.7:30:.TH "BPF-HELPERS" 7 "2023-04-11" "Linux v6.2"
>man7/iso_8859-14.7:6:.TH ISO_8859-14 7 (date) "Linux man-pages (unreleased)"
>man7/user-keyring.7:6:.TH user-keyring 7 (date) "Linux man-pages (unreleased)"
>man7/koi8-u.7:8:.TH KOI8-U 7 (date) "Linux man-pages (unreleased)"
>man7/iso_8859-11.7:8:.TH ISO_8859-11 7 (date) "Linux man-pages (unreleased)"
>man7/iso_8859-1.7:8:.TH ISO_8859-1 7 (date) "Linux man-pages (unreleased)"
>man7/iso_8859-6.7:6:.TH ISO_8859-6 7 (date) "Linux man-pages (unreleased)"
>man7/persistent-keyring.7:6:.TH persistent-keyring 7 (date) "Linux man-pages (unreleased)"
>man7/signal-safety.7:6:.TH signal-safety 7 (date) "Linux man-pages (unreleased)"
>man7/thread-keyring.7:6:.TH thread-keyring 7 (date) "Linux man-pages (unreleased)"
>man7/iso_8859-4.7:6:.TH ISO_8859-4 7 (date) "Linux man-pages (unreleased)"
>man7/process-keyring.7:6:.TH process-keyring 7 (date) "Linux man-pages (unreleased)"
>man7/iso_8859-2.7:9:.TH ISO_8859-2 7 (date) "Linux man-pages (unreleased)"
>man7/utf-8.7:10:.TH UTF-8 7 (date) "Linux man-pages (unreleased)"
>man7/armscii-8.7:6:.TH ARMSCII-8 7 (date) "Linux man-pages (unreleased)"
>man7/iso_8859-13.7:6:.TH ISO_8859-13 7 (date) "Linux man-pages (unreleased)"
>man7/iso_8859-5.7:6:.TH ISO_8859-5 7 (date) "Linux man-pages (unreleased)"
>man7/koi8-r.7:6:.TH KOI8-R 7 (date) "Linux man-pages (unreleased)"
>man7/session-keyring.7:6:.TH session-keyring 7 (date) "Linux man-pages (unreleased)"
>man7/user-session-keyring.7:6:.TH user-session-keyring 7 (date) "Linux man-pages (unreleased)"
>man7/iso_8859-7.7:6:.TH ISO_8859-7 7 (date) "Linux man-pages (unreleased)"
>man7/iso_8859-16.7:6:.TH ISO_8859-16 7 (date) "Linux man-pages (unreleased)"
>man7/iso_8859-15.7:7:.TH ISO_8859-15 7 (date) "Linux man-pages (unreleased)"
>man7/iso_8859-3.7:6:.TH ISO_8859-3 7 (date) "Linux man-pages (unreleased)"
>
>
>Should the '-' in e.g. UTF-8 be hyphen, or should it be a minus?  Are all of
>these hyphens?  And if so, why would a hyphen belong there?

It should be a hyphen.   All of these are hyphens.   A minus sign 
would belong if it was math stuff.   A “Unix dash” (being the same 
character as a minus sign) would belong if those were not names 
for use in prose but names to be interpreted by the software, that 
requires the use of hyphen-minus.   Your programs won’t accept 
command line options introduced by U+2010 ‐ HYPHEN.   Your program 
called fun-program won’t be executed when typing fun‐program with 
U+2010.   Otherwise (and beside its use in NAME), there is hardly 
any reason to use \-.

Perhaps an argument could be made about the copypastability of man 
page titles.   I don’t want to make it and would disagree with it.   
Unless the thing you describe explicitly contains a hyphen-minus, 
don’t use \-.
