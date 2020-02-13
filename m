Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5DDF715BBF1
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2020 10:44:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726232AbgBMJo0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Feb 2020 04:44:26 -0500
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]:31231 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1729494AbgBMJo0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Feb 2020 04:44:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1581587064;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=A7R8fSVU5unFSNLmDIRIHzrSWN6hVb8P441Ra08IDfY=;
        b=D6qwEeraSFntZXbyK7Qg88aSd8SnU3MlVNGLWB+x1McbWzNlX9dOXk49d3IEP+yyse7NOp
        k49EAKH+gZFvWoEPxmfDBiometDQT3jdCfJO5dAAZxErNwDwhVooey5ZlbjmQNYxFDQ/cI
        QFsWrkb4Tk8eQrEmYxUjg0w/EBAvmeU=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-2-QFpJkZOWPMKCw9RmiYzUEg-1; Thu, 13 Feb 2020 04:44:22 -0500
X-MC-Unique: QFpJkZOWPMKCw9RmiYzUEg-1
Received: by mail-wm1-f72.google.com with SMTP id u11so1790550wmb.4
        for <linux-man@vger.kernel.org>; Thu, 13 Feb 2020 01:44:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=A7R8fSVU5unFSNLmDIRIHzrSWN6hVb8P441Ra08IDfY=;
        b=Xk5BId/gwdF9AskQpfd2PkxPE0Xz/0ynv+KekhLB4DR6rBhWcJAZrjQ4s8CgAqkdzJ
         wt0GyJ0d6zAIYItdpBLSJA78AMm2ts8TIzYaoLWQF77op5GLiTt6ejbo7Fg/Z8C/dg2B
         zBBbU6e30TBDA9zBtK/7FXJCIurguORSjinWRm2FICAYWQCv3BSdTHFEin3wZDMTvcDI
         YS5KYMrfsS2x69GSt4pP3Vmz7pDWlYNReTE4XTGmqp1c2FQPTnj0z4kxt+wIT4jedfkk
         PeGPmKc5g68FgjADMdUgJr7VBNLW2/1x+QzvaD8bbk+pF+LQQ3qFMTPnoOgNRhK+/W5O
         nYdQ==
X-Gm-Message-State: APjAAAWSmBbFlmkqI6LRN6a56zxD4rhuSk2rvFrpBIOPIi8Kv92BsPqP
        +ZiOk5GR7LUHo4freMSdB/zhIH+jcIQtRr5sCcY/UgAFZ9G52aX5nooyZQDx1UFrTNk5SDTBlJk
        Ei9QIPXn69zDNEZs0qf+8
X-Received: by 2002:a7b:cc82:: with SMTP id p2mr4656026wma.159.1581587061547;
        Thu, 13 Feb 2020 01:44:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqwqMdssfNoOIndrEayLmgv/dDOm1WGl18cU8kQYHKMvKH741bL6toBx72xPRFsvuLfWj8OaFQ==
X-Received: by 2002:a7b:cc82:: with SMTP id p2mr4656002wma.159.1581587061331;
        Thu, 13 Feb 2020 01:44:21 -0800 (PST)
Received: from steredhat (host209-4-dynamic.27-79-r.retail.telecomitalia.it. [79.27.4.209])
        by smtp.gmail.com with ESMTPSA id z6sm2149757wrw.36.2020.02.13.01.44.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2020 01:44:20 -0800 (PST)
Date:   Thu, 13 Feb 2020 10:44:18 +0100
From:   Stefano Garzarella <sgarzare@redhat.com>
To:     Stefan Hajnoczi <stefanha@redhat.com>
Cc:     mtk.manpages@gmail.com, netdev@vger.kernel.org,
        linux-man@vger.kernel.org, Dexuan Cui <decui@microsoft.com>,
        Jorgen Hansen <jhansen@vmware.com>
Subject: Re: [PATCH] vsock.7: add VMADDR_CID_LOCAL description
Message-ID: <20200213094418.5b5jkkcsudbi4z4l@steredhat>
References: <20200211102532.56795-1-sgarzare@redhat.com>
 <20200213091748.GB542404@stefanha-x1.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200213091748.GB542404@stefanha-x1.localdomain>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Feb 13, 2020 at 09:17:48AM +0000, Stefan Hajnoczi wrote:
> On Tue, Feb 11, 2020 at 11:25:32AM +0100, Stefano Garzarella wrote:
> 
> Do you want to mention that loopback works in the guest and on the host
> since Linux vX.Y and before that it only worked inside the guest?

I didn't mention it, because it was only supported by some transports
(vmci, virtio), but it makes sense to say it, I'll add.

> 
> > @@ -164,6 +164,16 @@ Consider using
> >  .B VMADDR_CID_ANY
> >  when binding instead of getting the local CID with
> >  .BR IOCTL_VM_SOCKETS_GET_LOCAL_CID .
> > +.SS Local communication
> > +The
> > +.B VMADDR_CID_LOCAL
> > +(1) can be used to address itself. In this case all packets are redirected
> > +to the same host that generated them. Useful for testing and debugging.
> 
> This can be rephrased more naturally:
> 
> .B VMADDR_CID_LOCAL
> (1) directs packets to the same host that generated them. This is useful
> for testing applications on a single host and for debugging.

Sure, it is better, I'll fix.

Thanks,
Stefano

