Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E1456A83D7
	for <lists+linux-man@lfdr.de>; Thu,  2 Mar 2023 14:52:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229449AbjCBNwd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Mar 2023 08:52:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjCBNwd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Mar 2023 08:52:33 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C28AE32E62
        for <linux-man@vger.kernel.org>; Thu,  2 Mar 2023 05:52:31 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id j19-20020a05600c191300b003eb3e1eb0caso1795612wmq.1
        for <linux-man@vger.kernel.org>; Thu, 02 Mar 2023 05:52:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677765150;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7vRSdcVGLPp4c3wgctmkiXwrGlAwqRsG50ckGfRM6Ec=;
        b=XEg4xv7A1OJQ3Ag00IpHV58sI5Z1Z/yJl/n0jL70KmWiMzPELG7jBxazePmSOXl+ms
         GMrGkCLVLHSrELrhzugZeX438CZLZZ46U1OmtFMFOJADfoCnFzDrriy0Td87dl/wY7F2
         mDhDuE0X04WFXL9I4IMjOXa1sOJ47QvGrNMEonCEI5f4Slh9OXuNtndrflDxUjR8tAeG
         TUhrWY+JNnKWM2FNR9q9TqQ/iHR2y4LsXZ9/QipMAGkTHbUWJCaaGhbiXpnG7gEiND2Y
         eHKjObw4mVfIjru/atJofjME34bYpb4YI3iX7XkKzlOmfa5PTIWxI+mmbzKhUN27ZTiM
         +sAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677765150;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7vRSdcVGLPp4c3wgctmkiXwrGlAwqRsG50ckGfRM6Ec=;
        b=ulrcs44Z9CWY3Lym20fJsFPDqQOAAJnNEb3AgkdaNXDnHG3zxJY/brqxLNEiixtsOl
         qBZypaZhZW5DQ6iEY4fyZ9qKLsfOmEu+NlcfW0wGCzG5NAWWQGSgSxZxeQZSWjxCCgIK
         TsRWhnRmv1L9W+rgOeAQdm6PpAa1iKFJvRG455LHLJ8iY7TF8bzYPgSiRjvsika8oOAN
         uqD9ccON6hiMIImy79go6jPObNmkWJxKqMN3CrYOiyg1zcoV3LI/jmd5JZnOyJKReGQb
         fXPfTztD+GyQo1vMAu1rTZwG0eHnoryJ1YDPZm0qP8Mev4ZTHwcsviTKGsVvz9xSnDlG
         RO8w==
X-Gm-Message-State: AO0yUKX6Mtj+QdKkTjMlW3ELzj9PeOUi9ZsluZ/eJay1lanqM71YYBin
        XyQgnnNZB369KG9GPzenJ4M=
X-Google-Smtp-Source: AK7set8bta3RJFXPW0Ek4X1ePRfbTj7fCdfmKdDePRttcTsVVELfBcUF/LzYA7BWa8zSwRc1EVP3xg==
X-Received: by 2002:a05:600c:81b:b0:3ea:fca4:8c48 with SMTP id k27-20020a05600c081b00b003eafca48c48mr7292256wmp.23.1677765150340;
        Thu, 02 Mar 2023 05:52:30 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id bg37-20020a05600c3ca500b003dc4fd6e624sm3408578wmb.19.2023.03.02.05.52.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Mar 2023 05:52:29 -0800 (PST)
Date:   Thu, 2 Mar 2023 14:52:28 +0100
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/2] landlock.7: Document Landlock ABI v2 (file
 reparenting; kernel 5.19)
Message-ID: <20230302.bd0c17ff26e7@gnoack.org>
References: <20230228205224.5991-1-gnoack3000@gmail.com>
 <930993f4-36ce-c78e-13b3-fe2421350a45@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <930993f4-36ce-c78e-13b3-fe2421350a45@gmail.com>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex!

On Wed, Mar 01, 2023 at 10:25:38PM +0100, Alejandro Colomar wrote:
> On 2/28/23 21:52, Günther Noack wrote:
> > +.IP \[bu] 3
> 
> You only need to specify the indentation (the "3") in the first
> consecutive .IP.  All others reuse the indentation level until
> a .PP appears (or a few other situations that I won't enumerate
> for brevity).

Thanks, I missed that.

> > +When renaming, the
> > +.B LANDLOCK_ACCESS_FS_REMOVE_*
> 
> The * should be in italics, since it's not part of the literal,
> but rather a variable part.  I know the pages are not very
> consistent in this, but I'd like to make them consistent in the
> future.

Done.

Thank you for the review!
–Günther
