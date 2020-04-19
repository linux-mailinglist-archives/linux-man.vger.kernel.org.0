Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B61B1AFE38
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 22:47:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726063AbgDSUrv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 16:47:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725848AbgDSUru (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 16:47:50 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FBC6C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:47:50 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id b9so6196436ejb.3
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=n+LDdn31aqBEK8HHQBGirPDLRpehR5/tsDL59e00F9g=;
        b=eKhQke1Lh9u/FhwuOnMZk+FGyyTFpiMpSedDkXrcVBM5oJcoR1Plsx8JRgsYAz7abq
         PUkL/La/6myLpKlfwztiyZgIPmnCU5dw0q+y5tOqOaE3Sv66O5BKNG4pkr5d9Ik8QGGI
         UacNj7T2u4Ho8bQyrpHv292Cl89qdz6asTRCHFbufqE+YGHqc4gQUPLIY4LhUoPlTmNT
         bMVfEaTNY34RI8ZdynRecjRBqIWSnJUy0t7V3R/EbW8aazFbR0hVliItqhfySQZ7PAvL
         5jjoYg9G3yCv9iGYsCjVl8byIrBxG2BbS0M1SDpdmGObz9G/M73AFXZY17kAuyKuJsAf
         nC7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=n+LDdn31aqBEK8HHQBGirPDLRpehR5/tsDL59e00F9g=;
        b=f6mEkFYvrNWes/+qUZO1bu/YlJsIUucbG+Tuz2areDr2klEEAkQa7IkV6rgaudFLSS
         YA8eV3L/VB/vHh6XWz9G0DrY7FLqO4NwXJgXvRcCkzf8n8Y6rA1+65D6fzXDoiLjg/gu
         37GLc8u0ZYWbCpztsV5Z/hNH6rxt431AinutvkVDnavVIq+r6md14aG/JYryqowqlEQh
         MfDgHq42EmmmbUA8sV54PIiT1UfXv54DXciKD+QsrL+kTgqQPYO+OdWvlM4eTGgmV/St
         V69ySWMGcTRRjOv0mz0kvi/mGFSuBkZJoFAiHhxQ1YvnVzH5rWd2IscZaMK34kVJWpQG
         OXpg==
X-Gm-Message-State: AGi0PuZOaaGoIP5WBpdO4VbnzSG+8Lj0T80Qt+/7rajpWCJA37U/d3+7
        z9WlYRNno+m62LW1Eb/5IhZlGBPCAcFSuLq36mla+w==
X-Google-Smtp-Source: APiQypJLaUvf2d0jCmSmGmFE5RNNYU0IgsJQswwP33kj6kF3XOXFCuJhjn/T7xGuKH+KFMVUXETWtc8zuR+q7Pzrgww=
X-Received: by 2002:a17:906:48ce:: with SMTP id d14mr12360541ejt.113.1587329269247;
 Sun, 19 Apr 2020 13:47:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064812.GA31256@Debian-50-lenny-64-minimal>
In-Reply-To: <20200419064812.GA31256@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 19 Apr 2020 22:47:38 +0200
Message-ID: <CAKgNAkgkNcUiV=Tc38Kd46fECzaZZ0hyVw8U2visf5absJq=Gg@mail.gmail.com>
Subject: Re: Errors in man pages, here: msr(4): Content
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> can read proc as regular user (etch)
>
> "This file is protected so that it can be read and written only by the user "
> "I<root>, or members of the group I<root>."

I need more context here to find which part of the
page this note refers to.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
